import pandas as pd
import numpy as np
import nltk
import string
import enchant
import gensim

allegation_data = pd.read_csv("../data/data_question4_5.csv")

#print(set(allegation_data['final_outcome']))
document_text = pd.read_csv("../data/document_tags.csv")

data = pd.read_csv("data.csv")
print(set(data['victim_race']))
races = ['Black', 'Asian/Pacific Islander', 'Hispanic', 'White', 'lost']

rows = []
for victim_race in races:
    for investigator_race in races:
        target = data[(data["victim_race"] == victim_race) & (data["investigator_race"] == investigator_race)]
        rows.append([victim_race, investigator_race, target['keywords_freq'].mean(), target['punishment_severity'].mean(), target['victim_race'].count()])

analysis = pd.DataFrame(rows, columns=['victim_race','investigator_race','keywords_freq', 'punishment_severity', 'number_of_allegation'])

analysis.to_csv("analysis.csv",index=False)