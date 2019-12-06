import pandas as pd
import numpy as np

arresting_officers = pd.read_csv('arresting_officers_raw.csv')

arresting_officers['first_name'] = np.nan
arresting_officers['middle_initial'] = np.nan
arresting_officers['last_name'] = np.nan
arresting_officers['suffix_name'] = np.nan

def name_extract(input):
    #return a list of [firstname, middle name, last name, suffix name]
    suffixes = ['I','II','III','IV','V','VI','VII','VIII','IX','X']
    data = input.split()
    firstname = ""
    middlename = ""
    lastname = ""
    suffixname = ""
    if(len(data) == 2):
        firstname = data[0]
        lastname = data[1]
    elif(len(data) == 3):
        firstname = data[0]
        middlename = data[1]
        lastname = data[2]
    elif(len(data) == 4):
        firstname = data[0]
        middlename = data[1]
        if(data[3] in suffixes):
            lastname = data[2]
            suffixname = data[3]
        else:
            lastname = data[2] + " "+ data[3]
    elif(len(data) == 5):
        firstname = data[0]
        middlename = data[1]
        lastname = data[2]
    else:
        firstname = data[0]
        middlename = data[1]
        lastname = data[2] + " " + data[3] + data[4] + data[5]

    if('.' in middlename):
        middlename = middlename[:-1]
    return [firstname, middlename, lastname, suffixname]

# for index, row in arresting_officers.iterrows():
#     row['FIRST NAME'], row['MIDDLE INITIAL'], row['LAST NAME'], row['SUFFIX NAME']  = name_extract(row['OFFICER\'S NAME'])

print(arresting_officers.head())
# arresting_officers['FIRST NAME'] = arresting_officers.apply(lambda row : name_extract(row['OFFICER\'S NAME']), axis=1)[0]
# arresting_officers['MIDDLE INITIAL'] = arresting_officers.apply(lambda row : name_extract(row['OFFICER\'S NAME']), axis=1)[1]
# arresting_officers['LAST NAME'] = arresting_officers.apply(lambda row : name_extract(row['OFFICER\'S NAME']), axis=1)[2]
# arresting_officers['SUFFIX NAME'] = arresting_officers.apply(lambda row : name_extract(row['OFFICER\'S NAME']), axis=1)[3]


arresting_officers['first_name'], arresting_officers['middle_initial'], arresting_officers['last_name'], arresting_officers['suffix_name'] = zip(*arresting_officers['OFFICER\'S NAME'].apply(lambda row : name_extract(row)))
arresting_officers['id'] = arresting_officers['id'].astype('int64')
print(arresting_officers.head(10))
arresting_officers.to_csv("arresting_officers_amended.csv", index=False)

# test_data = list(arresting_officers['OFFICER\'S NAME'].head(10000))
# name_len_distribution = {0 : 0, 1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0}
# name = {2 : [], 3 : [], 4 : [], 5 : [], 7:[]}
# for data in test_data:
#     length = len(data.split())
#     name_len_distribution[length] += 1
#     name[length].append(data)
#
# print(name_len_distribution)
#
#
