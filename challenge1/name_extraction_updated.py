import pandas as pd
import numpy as np

#read old submission and use the same column name as solution file and correct two faults: remove dot in middle initial and convert id to integer
#data_officerarrest.csv should be downloaded from our original submission link provided by README.md
arresting_officers = pd.read_csv('data_officerarrest.csv')
arresting_officers = arresting_officers.rename(columns={'ID':'id', 'FIRST NAME':"first_name", 'MIDDLE INITIAL':'middle_initial','LAST NAME':'last_name','SUFFIX NAME':'suffix_name'})

arresting_officers['middle_initial'] = arresting_officers['middle_initial'].fillna("nan").apply(lambda x : x[:-1] if '.' in x else x)#remove dot in middle initial
arresting_officers['id'] = arresting_officers['id'].fillna(-1).astype('int64')#convert not nan to int
arresting_officers[arresting_officers['id'] == -1]['id'] = np.nan#bring nan back because it will be replaced with str "nan" in TA's grading script

#this is the updated result should achieve more than 85% matching, replace -1 to nan can take some time.
arresting_officers.to_csv('data_officerarrest_updated.csv', index=False)

#this is name extraction grading part I export from auto-grader where challenge1_sol.csv is solution file. this part is 10 points

# sol = pd.read_csv("challenge1_sol.csv")
# sol_final = sol[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower())
# submission_final = arresting_officers[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower())
# intersection = sol_final.merge(submission_final)
# print(len(intersection['id']) , len(sol_final['id']))
# print(len(intersection['id']) / len(sol_final['id']))