import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from IPython.display import Image
from sklearn.tree import export_graphviz
import pydotplus
from sklearn import tree
from sklearn.metrics import r2_score

data = pd.read_csv("../data/data_question3.csv")

# print(set(data['primary_cause']))
# print(set(data['judge']))

final_data = pd.get_dummies(data, columns=['race', 'primary_cause', 'judge'])
print(final_data.columns)
final_data = final_data.fillna(0)
train, test = train_test_split(final_data, test_size= 0.3)
X_train = train.drop(columns=['settlement_num', 'allegation_id'])
Y_train = train['settlement_num']
X_test = test.drop(columns=['settlement_num', 'allegation_id'])
Y_test = test['settlement_num']


clf = DecisionTreeRegressor(random_state=10, max_depth=70)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("prediction scores with 'race', 'allegation type/primary cause' and 'judge' are :")
print("training accuracy RMSE score is {}".format(np.sqrt(mean_squared_error(clf.predict(X_train), Y_train))))
print('testing accuracy RMSE score is {}'.format(np.sqrt(mean_squared_error(prediction, Y_test))))
print("R square score is {}".format(r2_score(prediction, Y_test)))
print("\n")


columns = final_data.drop(columns=['allegation_id', 'settlement_num']).columns
importances = clf.feature_importances_

#race, primary_cause, and judge. sum them up
feature_importance = [0,0,0]
for i in range(len(columns)):
    if('race' in columns[i]):
        feature_importance[0] += importances[i]
    elif('primary' in columns[i]):
        feature_importance[1] += importances[i]
    else:
        feature_importance[2] += importances[i]

print(feature_importance)

#for visualizing the decison tree, max_depth is set to a smaller value. if it is too large, rendering will cost
#a lot of time and the tree structure is difficult to recognize in our report
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
graph.write_png("../visualization/tree_vis_question3.png")


