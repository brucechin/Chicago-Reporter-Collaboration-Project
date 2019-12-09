import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn import tree
from sklearn.externals.six import StringIO
from IPython.display import Image
from sklearn.tree import export_graphviz
import pydotplus

#load data from csv file, we have total data of 211440 rows
data = pd.read_csv("../data/data_question1.csv")
data['race'] = data['race'].fillna("nan")
def normalize_race(race):
    if(race == 'nan'):
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

data['race'] = data['race'].apply(lambda x : normalize_race(x))

#the model can not accept NaN input
data = data.fillna(0)

train, test = train_test_split(data, test_size= 0.3)
columns = ['race', 'allegation_category_id', 'investigator_id']
X_train = train[columns]
Y_train = train['duration']
X_test = test[columns]
Y_test = test['duration']
data['duration'].describe()
#after testing, estimator does not affect the prediction accuracy
# estimators = [10, 20, 30, 40, 50, 60, 70, 80]
# for i in estimators:

#after testing, we found that LR model training costs too much time, which means it is not a good option. We will not use LR model in following questions
#clf = RandomForestRegressor(random_state= 10, n_estimators=20)
clf = DecisionTreeRegressor(random_state=10, max_depth= 25)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("investigation duration prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy RMSE score is {}".format(np.sqrt(mean_squared_error(clf.predict(X_train), Y_train))))
print('testing accuracy RMSE score is {}'.format(np.sqrt(mean_squared_error(prediction, Y_test))))
print("\n")
print(tree.plot_tree(clf))





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
graph.write_png("../visualization/tree_vis_question1.png")
#graph.write_png("iris.png")

# for i in range(len(columns)):
#     print("feature {} importance score in decision tree : {}".format(columns[i], clf.feature_importances_[i]))

#print(clf.decision_path(X_test))