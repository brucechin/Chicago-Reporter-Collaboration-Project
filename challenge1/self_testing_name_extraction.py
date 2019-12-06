import pandas as pd
import numpy as np


sol = pd.read_csv("challenge1_sol.csv")
submission = pd.read_csv("arresting_officers_amended.csv")

def normalize(row):
    if(type(row) == 'str'):
        row = (row.lower())

sol_final = sol[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower())
submission_final = submission[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower())

print(len(submission_final['id']) / len(sol_final['id']))
intersection = sol_final.merge(submission_final)
print(len(intersection['id']) / len(sol_final['id']))
