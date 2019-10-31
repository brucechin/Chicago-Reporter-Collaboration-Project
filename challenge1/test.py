
import pandas as pd
import numpy as np
import os
month_dic = {'Jan' : '01', 'Feb' : '02', 'Mar' : '03', 'Apr' : '04', 'May' : '05', 'Jun' : '06', 'Jul' : '07',
              'Aug' : '08', 'Sep' : '09', 'Oct' : '10', 'Nov' : '11', 'Dec' : '12'}

def merge_arresting_officers():
    arresting_officers_files = os.listdir("./data/arresting-officers")
    print(arresting_officers_files)
    arresting_officers = pd.DataFrame()
    for file in arresting_officers_files:
        df = pd.read_csv("./data/arresting-officers/" + file, skiprows=3)
        print(file[-8:-4])
        # drop unrelated rows
        df.drop(df.tail(2).index, inplace=True)

        df['arrest_year'] = file[-8:-4]
        # delete rows where officer's name are null value
        df['OFFICER\'S NAME'].replace('',np.nan, inplace=True)
        df.dropna(subset=['OFFICER\'S NAME'], inplace=True)

        df.dropna(subset=['APPOINTED DATE'], inplace=True)

        # If an entry is missing its cb_number or its value is not an integer, set the cb_number to  null.
        pd.to_numeric(df['CB Number3'], errors='coerce')
        df['CB Number3'].replace('', np.nan, inplace=True)

        df['APPOINTED DATE'] = df.apply(lambda row : date_formatter(row['APPOINTED DATE']), axis=1)

        print(df.head())
        arresting_officers = arresting_officers.append(df, sort=False)

    arresting_officers.to_csv("./arresting_officers.csv")

def merge_arrests():
    arrests_files = os.listdir("./data/arrests")
    print(arrests_files[-8:-4])
    arrests = pd.DataFrame()
    for file in arrests_files:
        print(file)
        df = pd.read_csv("./data/arrests/" + file)

        #unify all column names
        df.rename(columns={'Middle Initial' : 'MIDDLE INITIAL', 'GENDER' : 'SEX', 'Unnamed: 26' : 'COUNT', 'COUNT(AR.CB_NO)' : 'COUNT',
                           'BOND_DATE' : 'BOND DATE', 'ST Number' : 'ST NUMBER', 'CONCAT(SUBSTR(AR.STREET_NO,1,LENGTH(AR.STREET_NO)-2),\'XX\')' : 'ST NUMBER',
                           'BOND AMOUNT' : 'BOND AMT', 'TOTAL' : 'COUNT'}, inplace=True)
        print(df.columns)
        df.drop(df.tail(10).index, inplace=True)
        df['arrest_year'] = file[-8:-4]
        # If an entry is missing its cb_number or its value is not an integer, set the cb_number to  null.
        pd.to_numeric(df['CB NO'], errors='coerce')
        df['CB NO'].replace('', np.nan, inplace=True)
        #df.to_csv("./data/arrests/" + file)
        #arrests = arrests.append(df, sort=False)
    #arrests['RELASED DATE'] = arrests.apply(lambda row : date_formatter(row['RELEASED DATE']), axis=1)
    #arrests['BOND DATE'] = arrests.apply(lambda row : date_formatter(row['BOND DATE']), axis=1)
    arrests.to_csv("./arrests.csv")

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
    else:
        print(input)
    return res



merge_arrests()