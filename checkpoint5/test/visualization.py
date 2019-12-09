import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

investigation = pd.read_csv("select_data_investigatorallegation_inves.csv")
settlement = pd.read_csv("select_judge__avg_payment__from_cases_pa.csv")
investigation_by_allegation = pd.read_csv("select_data_officerallegation_allegation.csv")
# plt.figure()
# x_inv = [i for i in range(len(investigation))]
# x_set = [i for i in range(len(settlement))]
# plt.bar(x_inv, investigation['duration'])
# plt.xlabel("investigator")
# plt.ylabel("average investigation duration(days)")
# plt.show()
#
# plt.figure()
# plt.bar(x_set, settlement['avg'])
# plt.xlabel("judge")
# plt.ylabel("average settlement amount")
# plt.show()

plt.figure()
x_allegation = [i for i in range(len(investigation_by_allegation))]
plt.bar(x_allegation, investigation_by_allegation['avg'])
plt.xlabel("allegation type")
plt.ylabel("investigation duration(days)")
plt.show()