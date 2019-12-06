
import pandas as pd
import numpy as np
import os
month_dic = {'Jan' : '01', 'JAN' : '01' ,'Feb' : '02' ,'FEB' : '02', 'Mar' : '03', 'MAR' : '03', 'Apr' : '04', 'APR' : '05', 'May' : '05', 'MAY' : '05', 'Jun' : '06', 'JUN' : '06', 'Jul' : '07', 'JUL' : '07'
              , 'Aug' : '08', 'AUG' : '09', 'Sep' : '09', 'SEP' : '09', 'Oct' : '10', 'OCT' : '10', 'Nov' : '11', 'NOV' : '11', 'Dec' : '12', 'DEC' : '12'}

def merge_arresting_officers():
    arresting_officers_files = os.listdir("./data/arresting-officers")
    print(arresting_officers_files)
    arresting_officers = pd.DataFrame()
    for file in arresting_officers_files:
        df = pd.read_csv("./data/arresting-officers/" + file, skiprows=3)
        print(file[-8:-4])
        # drop unrelated rows
        df.drop(df.tail(3).index, inplace=True)

        df['ARREST YEAR'] = file[-8:-4]
        # delete rows where officer's name are null value
        df['OFFICER\'S NAME'].replace('',np.nan, inplace=True)
        df.dropna(subset=['OFFICER\'S NAME'], inplace=True)

        df.dropna(subset=['APPOINTED DATE'], inplace=True)

        # If an entry is missing its cb_number or its value is not an integer, set the cb_number to  null.
        pd.to_numeric(df['CB Number3'], errors='coerce')
        df['CB Number3'].replace('', np.nan, inplace=True)

        df['APPOINTED DATE'] = df.apply(lambda row : date_formatter(row['APPOINTED DATE']), axis=1)

        print(df.tail())
        arresting_officers = arresting_officers.append(df, sort=False)

    arresting_officers.to_csv("./arresting_officers_raw.csv",  index=False)

def merge_arrests():
    final_columns = ['AGE', 'AREA', 'ARREST CHARGE ID', 'ARREST DATE', 'ARREST EVENT', 'ARREST ID', 'BEAT', 'BOND AMT', 'BOND DATE', 'BOND TYPE', 'CB NO', 'CHARGE CODE',
                      'COUNT', 'DIR', 'DISTRICT', 'FBI CODE', 'FIRST NAME', 'HOUR', 'ID', 'LAST NAME', 'MIDDLE INITIAL', 'PHOTOGRAPHED DATE', 'RACE', 'RELEASED DATE', 'SEX',
                       'STATUTE', 'STATUTE DESCRIPTION', 'STREET NAME', 'ST NUMBER']
    arrests_files = os.listdir("./data/arrests")
    arrests = pd.DataFrame()
    column_names = set()
    for file in arrests_files:
        print(file)
        df = pd.read_csv("./data/arrests/" + file)

        #unify all column names
        df.rename(columns={'Middle Initial' : 'MIDDLE INITIAL', 'GENDER' : 'SEX', 'SEX ' : 'SEX', 'Unnamed: 26' : 'COUNT', 'COUNT(AR.CB_NO)' : 'COUNT', 'RELEASED FROM LOCKUP' : 'RELEASED DATE', 'STREET NUMBER ' : 'ST NUMBER',
                           'BOND_DATE' : 'BOND DATE', 'ST Number' : 'ST NUMBER', 'St Number' : 'ST NUMBER', 'ST NUM' : 'ST NUMBER', 'STREET NUMBER':'ST NUMBER','CONCAT(SUBSTR(AR.STREET_NO,1,LENGTH(AR.STREET_NO)-2),\'XX\')' : 'ST NUMBER', 'Unnamed: 27' : 'COUNT',
                           'BOND AMOUNT' : 'BOND AMT', 'TOTAL' : 'COUNT', 'CB NUM.' : 'CB NO', 'CB NUMBER' : 'CB NO', '(CASEWHENR.CDIN(\'S\',\'WWH\',\'WBH\')THEN\'HISPANIC\'ELSER.DESCREND)' : 'RACE',
                           'STREET NAME.1' : 'STREET NAME', 'ST NAME' : 'STREET NAME', 'DIRECTION' : 'DIR', 'ARREST EVENT ID' : 'ARREST EVENT', 'BOND TYPE ' : 'BOND TYPE', 'STATUE DESCRIPTION' : 'STATUTE DESCRIPTION',
                           'CHARGE ID' : 'ARREST CHARGE ID', 'ARREST HOUR' : 'HOUR' , 'HOUR ' : 'HOUR'}, inplace=True)
        for col in df.columns:
            column_names.add(col)

        for col in final_columns:
            if(col not in list(df.columns)):
                df[col] = np.nan

        df.drop(df.tail(10).index, inplace=True)
        df['ARREST YEAR'] = file[-8:-4]
        # If an entry is missing its cb_number or its value is not an integer, set the cb_number to  null.

        pd.to_numeric(df['CB NO'], errors='coerce')
        df['CB NO'].replace('', np.nan, inplace=True)
        #df.to_csv("./data/arrests/" + file)
        arrests = arrests.append(df, sort=False)

        #release memory for better utilization
        del df

    arrests['RELEASED DATE'] = arrests.apply(lambda row : date_formatter(row['RELEASED DATE']), axis=1)
    arrests['BOND DATE'] = arrests.apply(lambda row : date_formatter(row['BOND DATE']), axis=1)

    #drop COUNT column which is useless
    arrests.drop(columns='COUNT', axis=1, inplace=True)
    arrests.to_csv("./arrests.csv", index=False)
    print(arrests.columns)


def date_formatter(input):
    res = ''
    if(type(input) == str):
        items = input.split('-')
        if(len(items) == 3):
            #format like 10-10-99
            if(len(items[1]) == 3):
                res = res + month_dic[items[1]] + '/' + items[0] + '/'
                if(int(items[2]) < 20):
                    res += '20' + items[2]
                else:
                    res += '19' + items[2]
    return res



def merge_arresting_officers_with_updates():
    arresting = pd.read_csv('arresting_officers.csv')
    arresting_updates = pd.read_csv('arresting-officers-update.csv')
    #arresting = arresting.drop(columns='OFFICER\'S NAME')
    arresting_updates['ARREST YEAR'] = arresting_updates['ARREST DATE']
    arresting_updates['ARREST YEAR'] = arresting_updates['ARREST YEAR'].apply(lambda x : '20' + x[-2:])
    print(arresting_updates.head())
    print(arresting.columns)
    print(arresting_updates.columns)
    print(len(arresting), len(arresting_updates))
    arresting = arresting.append(arresting_updates)
    print(arresting.columns)
    print(len(arresting))

    #arresting.to_csv('arresting_officers.csv',index=False)


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
    return [firstname, middlename, lastname, suffixname]


def do_name_extraction():
    arresting_officers = pd.read_csv('arresting_officers.csv')
    arresting_officers['FIRST NAME'] = np.nan
    arresting_officers['MIDDLE INITIAL'] = np.nan
    arresting_officers['LAST NAME'] = np.nan
    arresting_officers['SUFFIX NAME'] = np.nan
    arresting_officers['FIRST NAME'], arresting_officers['MIDDLE INITIAL'], arresting_officers['LAST NAME'], \
    arresting_officers['SUFFIX NAME'] = zip(*arresting_officers['OFFICER\'S NAME'].apply(lambda row: name_extract(row)))

    arresting_officers.to_csv("arresting_officers.csv", index=False)



# merge_arrests()
merge_arresting_officers()
#
# do_name_extraction()
# merge_arresting_officers_with_updates()


# arrests_files = os.listdir("./data/arrests")
# arrests = pd.DataFrame()
# for file in arrests_files:
#     print(file)
#     df = pd.read_csv("./data/arrests/" + file)
#     print(df[df['ID'] == ''])