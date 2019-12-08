import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, accuracy_score
from sklearn.metrics import recall_score,precision_score
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeClassifier

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

#after testing, estimator does not affect the prediction accuracy
# estimators = [10, 20, 30, 40, 50, 60, 70, 80]
# for i in estimators:

#after testing, we found that LR model training costs too much time, which means it is not a good option. We will not use LR model in following questions
clf = RandomForestClassifier(random_state= 10, n_estimators=20)
#clf = DecisionTreeClassifier(random_state=10)
#clf = LogisticRegression(random_state=20)
clf.fit(X_train, Y_train)
prediction = clf.predict(X_test)
print("investigation duration prediction scores with 'race', 'allegation_category_id' and 'investigator_id' are :")
print("training accuracy score is {}".format(clf.score(X_train, Y_train)))
print("testing accuracy is {}, F1 score is {}".format(accuracy_score(prediction, Y_test), f1_score(prediction, Y_test, average='weighted', zero_division=True)))
print("precision score is {}, recall score is {}".format(precision_score(prediction, Y_test, average='weighted', zero_division=True),recall_score(prediction, Y_test, average='weighted', zero_division=True)))
print("\n")
print(clf.feature_importances_)
# for i in range(len(columns)):
#     print("feature {} importance score in decision tree : {}".format(columns[i], clf.feature_importances_[i]))

#print(clf.decision_path(X_test))