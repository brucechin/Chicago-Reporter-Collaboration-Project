import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, accuracy_score
from sklearn.metrics import recall_score,precision_score
import matplotlib.pyplot as plt
from sklearn.tree import DecisionTreeClassifier
from sklearn.svm import SVC

#load data from csv file, we have total data of 211440 rows
#we have the following final outcomes
data = pd.read_csv("../data/data_question2.csv")
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

def normalize_race(race):
    if(race == ''):
        return 0
    elif(race == 'Black'):
        return 1
    elif(race == 'Asian/Pacific Islander'):
        return 2
    elif(race == 'Hispanic'):
        return 3
    elif(race == 'Native American/Alaskan Native'):
        return 4
    else:
        return 5

def normalize_disciplined(dis):
    for i in range(len(final_outcome_list)):
        if(final_outcome_list[i] == dis):
            return i
    return -1 #if no one matches

data['race'] = data['race'].apply(lambda x : normalize_race(x))
data['final_outcome'] = data['final_outcome'].apply(lambda x : normalize_disciplined(x))
#print(set(data['final_outcome']))

#the model can not accept NaN input
data = data.fillna(0)

train, test = train_test_split(data, test_size= 0.3)
X_train = train[['race', 'allegation_category_id', 'investigator_id']]
Y_train = train['final_outcome']
X_test = test[['race', 'allegation_category_id', 'investigator_id']]
Y_test = test['final_outcome']


#we have tested it that we can achieve ~90% final outcome prediction accuracy using race, allegation category and investigator id
# estimators = [10, 20, 30, 40, 50, 60, 70, 80]
# for i in estimators:
#clf = DecisionTreeClassifier(random_state=10)
clf = RandomForestClassifier(random_state= 10, n_estimators=20)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("disciplinary action prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy score is {}".format(clf.score(X_train, Y_train)))
print("accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted', zero_division=True)))
print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted', zero_division=True),recall_score(prediction, Y_test, average='weighted', zero_division=True)))
print("\n")
#print(prediction, Y_test)

importances = clf.feature_importances_
print(importances)
plt.figure()
plt.title("question 2 feature importance graph")
plt.bar(['race', 'allegation_category_id', 'investigator_id'], importances)
plt.show()



#due to race feature is so unimportant, we would like to do prediction only use allegation category and investigator id to test it again

# train, test = train_test_split(data, test_size= 0.3)
# X_train = train[['allegation_category_id', 'investigator_id']]
# Y_train = train['final_outcome']
# X_test = test[['allegation_category_id', 'investigator_id']]
# Y_test = test['final_outcome']
#
# clf = RandomForestClassifier(random_state= 10, n_estimators=20)
# clf.fit(X_train, Y_train)
# prediction = clf.predict(X_test)
# print("prediction scores with 'allegation_category_id' and 'investigator_id' are :")
# print("accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted')))
# print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted',zero_division=True),recall_score(prediction, Y_test, average='weighted',zero_division=True)))
# print("\n")

#due to we can achieve decent prediction accuracy only use allegation category and investigator id and race feature has a very low importance score in first model,
# we conclude that victim race is not a good feature in predicting disciplinary action


data = data.drop(data[(data['final_outcome'] == 45) | (data['final_outcome'] == 11)].index)
print("after remove unknown and no action taken rows, we have {} rows of data".format(len(data['final_outcome'])))
train, test = train_test_split(data, test_size= 0.3)
X_train = train[['race', 'allegation_category_id', 'investigator_id']]
Y_train = train['final_outcome']
X_test = test[['race', 'allegation_category_id', 'investigator_id']]
Y_test = test['final_outcome']
clf = DecisionTreeClassifier(random_state=10)
#clf = RandomForestClassifier(random_state= 10, n_estimators=20)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("training accuracy score is {}".format(clf.score(X_train, Y_train)))

print("accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted', zero_division=True)))
print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted', zero_division=True),recall_score(prediction, Y_test, average='weighted', zero_division=True)))
print("\n")

importances = clf.feature_importances_
print(importances)