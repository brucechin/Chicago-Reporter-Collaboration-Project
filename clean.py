import pandas as pd
import numpy as np


df = pd.read_csv('data_arrest.csv')
print(df.head())
print(df.dtypes)
cols = ['id','ARREST_ID','CHARGE_CODE','AGE','CB_number','HOUR_','BEAT','DISTRICT','ARREST_CHARGE_ID','AREA','BOND_amount']
df[cols] = df[cols].fillna(-1)
for col in cols:
    df[col] = df[col].apply(lambda x : int(x) if x != -1 and x != 'C' else "")
df[cols] = df[cols].replace('-1', np.nan)
#df.applymap(str)
print(df.head())
print(df.dtypes)

# print(df.dtypes)
# print(df['DISTRICT'].unique())
# print(df['CHARGE_CODE'].unique())
# print(df['AGE'].unique())
# print(df['CB_number'].unique())
# print(df['ARREST_ID'].unique())
# print(df['Arrest_Year'].unique())
# print(df['BEAT'].unique())
# print(df['HOUR_'].unique())

cols = ['id','Arrest_Year','ARREST_ID','CHARGE_CODE','ARREST_EVENT','FIRST_NAME','LAST_NAME','Middle_Initial','AGE','SEX','RACE',
        'CB_number','FBI_CODE','HOUR_','street_number','direction','STREET_NAME','BEAT','DISTRICT','AREA','ARREST_CHARGE_ID',
        'STATUTE','STATUTE_DESCRIPTION','RELEASE_date','BOND_amount','BOND_TYPE','BOND_DATE','PHOTOGRAPHED_DATE','ARREST_DATE']

df = df[cols]

df.to_csv('data_arrest.csv', index=False)

