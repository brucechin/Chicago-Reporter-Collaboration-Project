import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn import tree
from IPython.display import Image
from sklearn.tree import export_graphviz
import pydotplus
from sklearn.metrics import r2_score

#load data from csv file, we have total data of 211440 rows
data = pd.read_csv("data_question1.csv")
data['race'] = data['race'].fillna("lost")

#the model can not accept NaN input
data = data.fillna(0)

most_frequent_investigators_index = data['investigator_id'].value_counts().index[:1000]
data = data.iloc[most_frequent_investigators_index]
final_data = pd.get_dummies(data, columns=['race', 'allegation_category_id', 'investigator_id'])
print(final_data.columns)
final_data = final_data.fillna(0)

train, test = train_test_split(final_data, test_size= 0.3)
X_train = train.drop(columns=['allegation_id', 'duration','current_star'])
X_test = test.drop(columns=['allegation_id',  'duration','current_star'])
Y_train = train['duration']
Y_test = test['duration']


#after testing, we found that LR model training costs too much time, which means it is not a good option. We will not use LR model in following questions
clf = DecisionTreeRegressor(random_state=10, max_depth=70)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)

print("investigation duration prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy RMSE score is {}".format(np.sqrt(mean_squared_error(clf.predict(X_train), Y_train))))
print('testing accuracy RMSE score is {}'.format(np.sqrt(mean_squared_error(prediction, Y_test))))
print("R square score is {}".format(r2_score(prediction, Y_test)))
print("\n")



columns = final_data.drop(columns=['allegation_id', 'duration','current_star']).columns
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
clf = DecisionTreeRegressor(random_state=10, max_depth= 5)
clf.fit(X_train, Y_train)
# Create DOT data
dot_data = tree.export_graphviz(clf, out_file=None,
                                feature_names=columns,
                                )
# Draw graph
graph = pydotplus.graph_from_dot_data(dot_data)

# Show graph
Image(graph.create_png())

# Create PNG
graph.write_png("tree_vis_question1.png")
#######################################################################################################################
#decision tree visualization part. if you can not install graphviz software successfully, please delete the code above#
#######################################################################################################################
