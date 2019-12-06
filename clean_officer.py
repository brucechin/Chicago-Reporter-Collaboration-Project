import pandas as pd
import numpy as np

df = pd.read_csv('data_officerarrest_final.csv')
# print(df.head())
# print(df.dtypes)
cols = ['ID','CB_number','arrest_id','arrest_year']
df[cols] = df[cols].fillna(-1)
for col in cols:
    df[col] = df[col].apply(lambda x : int(x) if x != -1 and x != 'C' else "")
df[cols] = df[cols].replace('-1', np.nan)


print(df.columns)

new_cols_order = ['ID','CB_number','arrest_year','FIRST NAME','MIDDLE INITIAL','LAST NAME','SUFFIX NAME','APPOINTED DATE','ARREST DATE','OFFICER ROLE','STAR NUMBER','arrest_id']
df = df[new_cols_order]

print(df.head())
print(df.dtypes)

df.to_csv('data_officerarrest.csv', index=False)