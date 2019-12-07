import pandas as pd
import numpy as np
import nltk
import string
import enchant
import gensim

nltk.download('stopwords')
stopwords = nltk.corpus.stopwords.words('english')
english_words = enchant.Dict("en_US")

document_text = pd.read_csv("../data/document_tags.csv")
allegation_data = pd.read_csv("../data/data_question4_5.csv")

def clean_CRID(crid):
    #in title column of document_tags, it looks like "CRID 315524 CR", and we need to extract the CRID to merge two dataframe
    data = crid.split(" ")
    for i in data:
        if i.isdigit():
            return i
    return -1

document_text['crid'] = document_text['title'].apply(lambda x : clean_CRID(x)).astype('int64')


#we use a positive number to represent the degree of these punishment. The larger number means more severe punishment
final_outcome_severity = {'Separation' : 3, '12 Day Suspension' : 12, '29 Day Suspension' : 29, '16 Day Suspension' : 26,
                          '21 Day Suspension' : 21, '1 Day Suspension' : 1, 'Administrative Termination' : 20,
                          '10 Day Suspension' : 10, '23 Day Suspension' : 23, '365 Day Suspension' : 365, '2 Day Suspension' : 2,
                          'Reprimand' : 3, 'Suspended For 180 Days' : 180, '31 Day Suspension' : 31, '20 Day Suspension' : 20,
                          '11 Day Suspension' : 11, '8 Day Suspension' : 8, '270 Day Suspension' : 270, '180 Day Suspension' : 180,
                          'Suspended Over 30 Days' : 40, '60 Day Suspension' : 60, '4 Day Suspension' : 4, 'Resigned' : 999, '28 Day Suspension' : 28,
                          '7 Day Suspension' : 7, '30 Day Suspension' : 30, '9 Day Suspension' : 9, '35 Day Suspension' : 35, '24 Day Suspension' : 24,
                          'No Action Taken' : 0, '120 Day Suspension' : 120, '25 Day Suspension' : 25, '40 Day Suspension' : 40, '45 Day Suspension' : 45,
                          'Reinstated By Police Board' : 1, 'Penalty Not Served' : 1, 'Violation Noted' : 5, '5 Day Suspension' : 5,
                          'Reinstated By Court Action' : 3, '150 Day Suspension' : 150, '75 Day Suspension' : 75, '90 Day Suspension' : 90,
                          '6 Day Suspension' : 6, 'Unknown' : -1 , '3 Day Suspension' : 3, '15 Day Suspension' : 15}


# we need to clean the document text first here and do the merge
high_freq_but_not_useful_words = ["yes", "police", "officer", "unit", "date", "subject", "name",  "star", "time", "log", "city", "number",
                                  "interview", "one", "ed", "type", "office", "told", "department", "board", "stated", "attachment", "page",
                                  "vehicle", "member", "days", "hours", "state", "made", "contact","year","report","said","used","use","first","print",
                                  "also","would","address","section","battery","hand", "information"]

#we decided to use key words to determine the degree of minimization of an investigation document
key_words = ['accused', 'incident', 'weapon', 'alleged', "arrested", "violation", "observed", "detective", "refused", "force", "accountability",
             "firearm", "review", "report", "civilian", "disciplinary", "evidence", "complaint", "alleged", "beat", "respondent", "court","violation",
             "medical","charges","arrested","warrant","suspension","property","injury","denied","injured","gun","victims","arresting","searched","charged",
             "law", "security", "guilty","drug","testimony","penalty", "misconduct","violations","alcohol","shots", "suspect","permission","kicked",
             "testified","repeatedly","shooting","falsely","unlawful","allowed","excessive","damaged","doctor","broken","disobedience","judge","intoxicated",
             "disrespect","compliance","acknowledge","fire","illegal","yelling","bureau","arrest","offender","investigation","duty","rule","rights","handgun",
             "approved","taser","superintendent","allegation","summary","counsel","duties","checked","drinking","accidental","stolen","shotgun",'misuse',
             'conspiracy','commit','crime','warrant','damage','gang','death','discharge','misconduct','sexual','abuse']

#use set to gain higher speed when check if word exist in it
key_words = set(key_words)
high_freq_but_not_useful_words = set(high_freq_but_not_useful_words)


def normalize(txt):
    well_formed_words = [word.lower() for word in nltk.tokenize.word_tokenize(txt.strip()) if '?' not in word]
    non_stop_words = [word for word in well_formed_words if(word not in stopwords and not word.isdigit() and '.' not in word and word not in high_freq_but_not_useful_words)]
    real_words = [word for word in non_stop_words if english_words.check(word)]#remove non-english word or wrongly OCR scanned word
    return real_words

document_text['clean_text'] = document_text['document_text'].apply(lambda x : normalize(x))


#word frequency statistics
word_counter = {}
def count_words(words):
    for word in words:
        if word in word_counter:
            word_counter[word] += 1
        else:
            word_counter[word] = 1

#we collected more than 20000 distinct words here, save words ranked by frequency descendent order in file.
#manually select keywords and unimportant words from file
# document_text['clean_text'].apply(lambda x : count_words(x))
# print(len(word_counter))
#
# ranked_word = sorted(word_counter, key=word_counter.get, reverse=True)
#
# with open('word_list.txt', 'w') as f:
#     for word in ranked_word:
#         f.write("{}   {}\n".format(word, word_counter[word]))

#converting text to bag of words
# chars = []
# document_text['clean_text'].apply(lambda x : chars.append(x))
# dictionary = gensim.corpora.Dictionary(chars)
# bow_corpus = [dictionary.doc2bow(doc) for doc in chars]
#
# lda_model =  gensim.models.LdaMulticore(bow_corpus,
#                                    num_topics = 5,
#                                    id2word = dictionary,
#                                    passes = 10,
#                                    workers = 8)
#
# # for idx, topic in lda_model.print_topics(num_topics=10, num_words=30):
# #     print("Topic: {} \nWords: {}".format(idx, topic))
# #     print("\n")
#
# print(lda_model.get_topics())




def count_keywords_freq(words):
    if(len(words) == 0):
        return 0

    counter = 0
    for word in words:
        if(word in key_words):
            counter += 1
    return float(counter / len(words))

#calculate key word frequency in document_text and allegation title. because title is short, so the keywords in title will have higher weights
document_text['keywords_freq'] = document_text['clean_text'].apply(lambda x : count_keywords_freq(x)) + document_text['allegation_name'].apply(lambda x : count_keywords_freq(x.lower().split()))

print(document_text['keywords_freq'].describe())

#convert final_outcome to numbers representing severity of punishment
allegation_data['punishment_severity'] = allegation_data['final_outcome'].apply(lambda x : final_outcome_severity[x])


#fill null race using "nan"
allegation_data['investigator_race'] = allegation_data['investigator_race'].fillna("lost")
allegation_data['victim_race'] = allegation_data['victim_race'].fillna("lost")

#inner join two tables using CRID
data = allegation_data.merge(document_text, left_on='crid', right_on='crid')

#we have 1220 not null document text and after inner join, we have 28533 rows of allegation records that have OCR scanned document text for NLP work
#print(len(document_text),len(data['crid']))
print(data[['allegation_id_x', "investigator_race", "victim_race",'keywords_freq' ,'punishment_severity']].head(10))

result = data[['allegation_id_x', "investigator_race", "victim_race",'keywords_freq' ,'punishment_severity']]
result.to_csv("data.csv", index=False)