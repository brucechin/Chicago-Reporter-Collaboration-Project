import pandas as pd
import numpy as np

# naive_match = pd.read_csv('data/matches_v2.csv')
# fuzzy_match = pd.read_csv('data/fuzzy_matches_v2.csv')
# officer_arrest = pd.read_csv('data/data_officerarrest.csv')
#
# naive_merge = pd.merge(naive_match, officer_arrest, how='inner', left_on='id',right_on='ID')
# fuzzy_merge = pd.merge(fuzzy_match, officer_arrest, how='inner', left_on='id', right_on='ID')
#
# naive_result = naive_merge[['arrest_id','officer_id']]
# fuzzy_result = fuzzy_merge[['arrest_id','officer_id']]
#
# naive_result['arrest_id'] = naive_result['arrest_id'].astype('int64')
# fuzzy_result['arrest_id'] = fuzzy_result['arrest_id'].astype('int64')
# print(set(naive_result['arrest_id'].apply(lambda x : type(x))))
# print(set(fuzzy_result['arrest_id'].apply(lambda x : type(x))))
#
# naive_result.to_csv('data/naive_result.csv',index=False)
# fuzzy_result.to_csv('data/fuzzy_result.csv',index=False)

match = pd.read_csv('data/final_matches.csv')
officerarrest = pd.read_csv('data/data_officerarrest.csv')



#data_officerarrest.id, data_officer.id
res = match[['ID','officer_id']]
res['ID'] = res['ID'].astype('int64')
print(set(res['ID'].apply(lambda x : type(x))))
print(len(match),len(res))
res.to_csv('challenge2_result.csv', index=False)
