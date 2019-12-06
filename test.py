import pandas as pd
import numpy as np

df = pd.read_csv('data_officerarrest.csv')
print(len(df['ID']))
print(len(set(df['ID'])))
print(df['ID'].isnull())