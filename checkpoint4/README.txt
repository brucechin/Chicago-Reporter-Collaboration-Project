# README for Checkpoint #4
## JaCoya Thompson, Lianke Qin and Victor S. Bursztyn.
### ---------------------------------------
## DISCLAIMER: *Prof. Rogers has authorized the use of Python's NetworkX in class (Thursday, Nov 21 2019).* This is a regular Python project and all libraries can be installed via pypi (pip install ...) by following the instructions below. Please follow this documentation if you would like to reproduce our steps.
### ---------------------------------------

## I) Pre-requisites:

1. To regenerate the data in 'src/data/', you need to have loaded the CPDB dataset. Steps for data generation are detailed in part II below. Note, however, that the CSV files are already in place.

2. To execute our Jupyter Notebooks, you need to install the dependencies in requirements.txt. This can be done either by running "pip install -r requirements.txt" on your Python3 environment of choice or by installing each library individually:

pip install jupyter
pip install pandas
pip install matplotlib
pip install networkx==2.3
pip install python-louvain

Project Jupyter is necessary for executing Jupyter Notebooks. Note, however, that our notebooks in '/src' are already executed and have all results rendered. Pandas is necessary for data loading and preparation. MatPlotLib is necessary in case you want to render the two graphs in each notebook. NetworkX is necessary for graph construction and processing (*please note* that you need to specify version 2.3). And finally, Python-Louvain is necessary for performing community detection on top of NetworkX.

*If you have any questions, please contact v-bursztyn@u.northwestern.edu*

### ---------------------------------------

## II) Reproducibility Instructions:
### Steps 1 to 4 describe data generation and step 5 performs our Checkpoint #4 analysis.

1. Data generation starts with this DataBricks notebook:
https://databricks-prod-cloudfront.cloud.databricks.com/public/4027ec902e239c93eaaa8714f173bcfc/1826787529105446/4031508515733279/5835448718421662/latest.html

2. Run it and download 'data_victim.csv', 'data_officerallegation.csv' and 'data_allegationcategory.csv' entirely, and place them in 'src/data' (note that they are already in place).

3. Go to directory '/src' and run "jupyter notebook". This should call Jupyter's web interface, which can be accessed at the localhost address appearing in your console (typically http://localhost:8888/).

4. Open and run '0_matching_files.ipynb' if you would like to recreate 'results_victimrace_officer_allegations.csv' and 'results_officer_allegations.csv', and place them in 'src/data' (note that they are already in place).

5. Open each one the notebooks that might interest you ('1-co-allegation_types--global.ipynb', '2-co-allegation_types--black_victims.ipynb', and '3-co-allegation_types--white_victims.ipynb') and run its cells (you can either use the 'Run' icon, the 'Cell' menu, or press shift + Enter).

### Important note: the community detection algorithm is *not* deterministic, which means that different executions lead to slightly different results. *That's expected and an acceptable practice.* You can see that modularity values (our measure of clustering quality) vary only marginally.

### ---------------------------------------

## III) Questions and Analysis:

Please refer to 'findings.pdf.'

### ---------------------------------------

Contact: JacoyaThompson2020@u.northwestern.edu, v-bursztyn@u.northwestern.edu and lianke.qin@northwestern.edu
