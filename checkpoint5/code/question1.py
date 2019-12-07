import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import f1_score, accuracy_score
from sklearn.svm import SVC
#load data from csv file, we have total data of 211440 rows
data = pd.read_csv("../data/data_question1.csv")
print(set(data['race']))
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

data['race'] = data['race'].apply(lambda x : normalize_race(x))

#the model can not accept NaN input
data = data.fillna(0)

print(set(data['allegation_category_id']))

# train, test = train_test_split(data, test_size= 0.3)
# X_train = train[['race', 'allegation_category_id', 'investigator_id','current_star']]
# Y_train = train['duration']
# X_test = test[['race', 'allegation_category_id', 'investigator_id','current_star']]
# Y_test = test['duration']
#
#
# estimators = [10, 20, 30, 40, 50, 60, 70, 80]
# for i in estimators:
#     clf = RandomForestClassifier(random_state= 10, n_estimators=i)
#     clf.fit(X_train, Y_train)
#     print("estimator = {}, accuracy is {}".format(i, accuracy_score(clf.predict(X_test), Y_test)))
#
# svm = SVC(gamma='auto',kernel='linear', probability=True, max_iter=500)
# svm.fit(X_train, Y_train)
# print(accuracy_score(svm.predict(X_test), Y_test))