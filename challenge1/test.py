
import pandas as pd
import numpy as np
import os

def merge_arresting_officers():
    arresting_officers_files = os.listdir("./data/arresting-officers")
    print(arresting_officers_files)
    arresting_officers = pd.DataFrame()
    for file in arresting_officers_files:
        df = pd.read_csv("./data/arresting-officers/" + file, skiprows=3)
        df.dropna(axis='columns')
        df['arrest_year'] = None
        print(df.head())
        arresting_officers = arresting_officers.append(df, sort=False)
    #arresting_officers.to_csv("./arresting_officers.csv")

def merge_arrests():
    arrests_files = os.listdir("./data/arrests")
    print(arrests_files)
    arrests = pd.DataFrame()
    for file in arrests_files:
        df = pd.read_csv("./data/arrests/" + file, skiprows=5)
        df['arrest_year'] = None
        arrests = arrests.append(df, sort=False)
    #arrests.to_csv("./arrests.csv")

merge_arresting_officers()