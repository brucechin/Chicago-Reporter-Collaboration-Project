import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error

data = pd.read_csv("../data/data_question3.csv")
primary_cause_list = ['Excessive force', 'Assault', 'Illegal/Unreasonable Search', 'Due Process Violation',
                      'Battery', 'Failure to Provide Medical Care', 'Monell (Policy and Practice)', 'Illegal search/seizure',
                      'Illegal/Unreasonable Seizure', 'Wrongful Death', 'Excessive force-serious', 'Malicious prosecution',
                      'Other police misconduct', 'Deliberate Indifference', 'Reversed conviction', 'Monell (policies and practices)',
                      'False arrest', 'Extended detention', 'Excessive force-minor', 'Willful and Wanton Misconduct',
                      'Malicious Prosecution', 'Trespass', 'False Imprisonment', 'Equal protection violation (racial bias)',
                      'First Amendment violation', 'Illinois Domestic Violence Act violation', 'DUI stop',
                      'Failure to provide medical care', 'Negligence', 'Unlawful Detention', 'Other 1983/Civil Rights Violations',
                      'False Arrest']
judge_list = ['Finnegan', 'James D. Egan', 'Susan Ruscitti-Grussel', 'Brosnahan', 'Shadur', 'Holderman', 'James P. McCarthy',
              'Marcia Maras', 'Ward John A', 'Gillespie', 'Kathy M. Flanagan', 'Nordberg', 'Lefkow', 'Budzinski', 'Mason',
              'Norgle, Sr.', 'Alonso', 'Shah', 'William Maddux', 'Dow Jr.', 'Eileen M. Brewer', 'Guzman', 'Varga', 'Gottschall',
              'Kendall', 'Durkin', 'Der-Yeghiayan', 'Wood', 'Blakey', 'John P. Callahan', 'Lorna E. Propes', 'Pallmeyer',
              'James P. Flannery', 'Randye Kogan', 'Lee', "Eileen O'Neill Burke", 'Ehrlich', 'Jeffrey Lawrence', 'Feinerman',
              'Elizabeth M. Budzinski', 'Leinenweber', 'Manning', 'Brewer Eileen', 'Bucklo', 'Brewer', 'Cox', 'Brown', 'Norgle, Sr',
              'Kenneth Williams', 'Gomolinski', 'Kennelly', 'Norgle Sr.', 'Norgle', 'Tharp, Jr.', 'Diane M. Shelley', 'Gettleman',
              'Tharp', 'Dow, Jr.', 'Gilbert', 'Castillo', 'Lindberg', 'Hart', 'Thomas Lee Hogan', 'Cassandra Lewis', 'Kim',
              'Schenkier', 'Zagel', 'Ronald S. Davis', 'Conlon', 'Cole', 'Ehrlich John', 'Coleman', 'Tharp Jr.', 'Chang', 'St. Eve',
              'Flanagan Kathy', 'Grady', 'Marovich', 'Ellis', 'Hibbler', "James N. O'hara", 'Kocoras', 'Tharp, Jr', 'Dow', 'Rowland', 'Darrah', 'Eve']

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

def normalize_judge(judge):
    for i in range(len(judge_list)):
        if(judge_list[i] == judge):
            return i
    return -1 # nan for judge column

def normalize_primary_cause(cause):
    for i in range(len(primary_cause_list)):
        if(primary_cause_list[i] == cause):
            return i
    return -1 # primary cause not found or nan

data['primary_cause'] = data['primary_cause'].apply(lambda x : normalize_primary_cause(x))
data['judge'] = data['judge'].apply(lambda x : normalize_judge(x))
data['race'] = data['race'].apply(lambda x : normalize_race(x))
data = data.fillna(0)


# print(set(data['primary_cause']))
# print(set(data['judge']))
print(data.describe())
#data = data.drop(data[data['settlement_num'] > 1000000].index)
#print(data.describe())
train, test = train_test_split(data, test_size= 0.3)
X_train = train[['race', 'primary_cause', 'judge']]
X_test = test[['race', 'primary_cause', 'judge']]
Y_train = train['settlement_num']
Y_test = test['settlement_num']


#clf = RandomForestRegressor(random_state= 10, n_estimators=50)
depths = [10, 15, 20, 25, 30, 35, 40, 45, 50]
for depth in depths:
    clf = DecisionTreeRegressor(random_state=10, max_depth= depth)
    clf.fit(X_train, Y_train)
    prediction = clf.predict(X_test)
    print("prediction scores with 'race', 'allegation type/primary cause' and 'judge' are :")
    print("training accuracy RMSE score is {}".format(np.sqrt(mean_squared_error(clf.predict(X_train), Y_train))))
    print('testing accuracy RMSE score is {}'.format(np.sqrt(mean_squared_error(prediction, Y_test))))
    print("\n")

#print(prediction, Y_test)

importances = clf.feature_importances_
print(importances)
plt.figure()
plt.title("question 3 feature importance graph")
plt.bar(['race', 'allegation type/primary cause', 'judge'], importances)
plt.show()


