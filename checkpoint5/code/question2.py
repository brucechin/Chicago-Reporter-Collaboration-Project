import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, accuracy_score
from sklearn.metrics import recall_score,precision_score
import matplotlib.pyplot as plt
from sklearn.tree import DecisionTreeClassifier
from sklearn.svm import SVC
from IPython.display import Image
from sklearn.tree import export_graphviz
import pydotplus
from sklearn import  tree
from sklearn import preprocessing

#load data from csv file, we have total data of 211440 rows
#we have the following final outcomes

data = pd.read_csv("data_question2.csv")
data['race'] = data['race'].fillna("lost")
data['final_outcome'] = data['final_outcome'].fillna("Unknown")
data['allegation_category_id'] = data['allegation_category_id'].fillna(-1)
data['investigator_id'] = data['investigator_id'].fillna(-1)
final_outcome_list = ['10 Day Suspension', '8 Day Suspension', 'Suspended For 180 Days', '21 Day Suspension',
                      '180 Day Suspension', '25 Day Suspension', 'Reinstated By Court Action', 'Resigned',
                      '6 Day Suspension', 'Reprimand', '15 Day Suspension', 'No Action Taken', 'Reinstated By Police Board',
                      '90 Day Suspension', '3 Day Suspension', '29 Day Suspension', '7 Day Suspension', '35 Day Suspension',
                      'Penalty Not Served', '11 Day Suspension', '270 Day Suspension', '45 Day Suspension', 'Suspended Over 30 Days',
                      'Violation Noted', '365 Day Suspension', '2 Day Suspension', 'Administrative Termination', '75 Day Suspension',
                      '4 Day Suspension', '60 Day Suspension', '28 Day Suspension', '40 Day Suspension', '16 Day Suspension',
                      '5 Day Suspension', '23 Day Suspension', '9 Day Suspension', '150 Day Suspension', '1 Day Suspension',
                      '24 Day Suspension', '30 Day Suspension', 'Separation', '31 Day Suspension', '12 Day Suspension',
                      '120 Day Suspension', '20 Day Suspension', 'Unknown']


most_frequent_investigators_index = data['investigator_id'].value_counts().index[:1000]
data = data.iloc[most_frequent_investigators_index]
final_data = pd.get_dummies(data, columns=['race', 'allegation_category_id', 'investigator_id'])
final_data = final_data.fillna(0)
train, test = train_test_split(final_data, test_size= 0.3)
X_train = train.drop(columns=['allegation_id', 'final_outcome','current_star'])
Y_train = train['final_outcome']
X_test = test.drop(columns=['allegation_id',  'final_outcome','current_star'])
Y_test = test['final_outcome']


#we have tested it that we can achieve ~90% final outcome prediction accuracy using race, allegation category and investigator id
# estimators = [10, 20, 30, 40, 50, 60, 70, 80]
# for i in estimators:
clf = DecisionTreeClassifier(random_state=10, max_depth=100)
#clf = RandomForestClassifier(random_state= 10, n_estimators=20)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("disciplinary action prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy score is {}".format(clf.score(X_train, Y_train)))
print("accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted', zero_division=True)))
print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted', zero_division=True),recall_score(prediction, Y_test, average='weighted', zero_division=True)))
print("\n")
#print(prediction, Y_test)
columns = final_data.drop(columns=['allegation_id', 'final_outcome','current_star']).columns
importances = clf.feature_importances_

#race, allegation_type, and investigator. sum them up
feature_importance = [0,0,0]
for i in range(len(columns)):
    if('race' in columns[i]):
        feature_importance[0] += importances[i]
    elif('allegation' in columns[i]):
        feature_importance[1] += importances[i]
    else:
        feature_importance[2] += importances[i]

print("race, allegation_type, investigator_id importance weights in our model :")
print(feature_importance)


#for visualizing the decison tree, max_depth is set to a smaller value. if it is too large, rendering will cost
#a lot of time and the tree structure is difficult to recognize in our report


#######################################################################################################################
#decision tree visualization part. if you can not install graphviz software successfully, please delete the code below#
#######################################################################################################################
clf = DecisionTreeClassifier(random_state=10, max_depth= 5)
clf.fit(X_train, Y_train)

# Create DOT data
dot_data = tree.export_graphviz(clf, out_file=None,
                                feature_names=columns,
                               class_names = final_outcome_list
                                )
# Draw graph
graph = pydotplus.graph_from_dot_data(dot_data)

# Show graph
Image(graph.create_png())
# Create PNG
graph.write_png("tree_vis_question2.png")
#######################################################################################################################
#decision tree visualization part. if you can not install graphviz software successfully, please delete the code above#
#######################################################################################################################






####delete No Action Taken and Unknown rows
print("\n\ndelete No Action Taken and Unknown rows and do another test\n\n")
data = pd.read_csv("data_question2.csv")
data['race'] = data['race'].fillna("lost")
data['final_outcome'] = data['final_outcome'].fillna("Unknown")
data['allegation_category_id'] = data['allegation_category_id'].fillna(-1)
data['investigator_id'] = data['investigator_id'].fillna(-1)
data = data[(data['final_outcome'] != 'Unknown') & (data['final_outcome']!= 'No Action Taken')]

most_frequent_investigators_index = data['investigator_id'].value_counts().index[:1000]
data = data.iloc[most_frequent_investigators_index]
final_data = pd.get_dummies(data, columns=['race', 'allegation_category_id', 'investigator_id'])
final_data = final_data.fillna(0)
train, test = train_test_split(final_data, test_size= 0.3)
X_train = train.drop(columns=['allegation_id', 'final_outcome','current_star'])
Y_train = train['final_outcome']
X_test = test.drop(columns=['allegation_id',  'final_outcome','current_star'])
Y_test = test['final_outcome']


#we have tested it that we can achieve ~90% final outcome prediction accuracy using race, allegation category and investigator id

clf = DecisionTreeClassifier(random_state=10, max_depth=100)
#clf = RandomForestClassifier(random_state= 10, n_estimators=20)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("disciplinary action prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy score is {}".format(clf.score(X_train, Y_train)))
print("accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted', zero_division=True)))
print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted', zero_division=True),recall_score(prediction, Y_test, average='weighted', zero_division=True)))
print("\n")
#print(prediction, Y_test)
columns = final_data.drop(columns=['allegation_id', 'final_outcome','current_star']).columns
importances = clf.feature_importances_

#race, allegation_type, and investigator. sum them up
feature_importance = [0,0,0]
for i in range(len(columns)):
    if('race' in columns[i]):
        feature_importance[0] += importances[i]
    elif('allegation' in columns[i]):
        feature_importance[1] += importances[i]
    else:
        feature_importance[2] += importances[i]


print("race, allegation_type, investigator_id importance weights in our model :")
print(feature_importance)
