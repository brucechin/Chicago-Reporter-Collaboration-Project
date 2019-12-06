import pandas as pd
import copy
import boto3
from string import punctuation

def get_s3_pandas(file_key):
    obj = s3_client.get_object(Bucket="northwestern.amer.trifacta.net", Key=file_key)
    return pd.read_csv(obj['Body'])


# check if 2 entities are equal
def my_assert_equal(description, actual, expected, status):
    success = (expected == actual)
    status_awarded = status if success else (not status)
    print("TEST %s: %s, expected value:%s, actual value:%s\n\t%r/%r status awarded" %
          ("PASSED" if success else "FAILED", description, expected, actual, status_awarded, status))
    return status_awarded

# check if there are any nulls and dtypes are consistent
def dtype_and_null(description, actual, expected, status):
    dtype_test = (expected["id"].dtype == actual["id"].dtype)
    null_test = any(actual["id"].isnull())
    success = (dtype_test and not null_test)
    status_awarded = status if success else (not status)
    expected = "Dtype test:+" + str(expected["id"].dtype) + " Null Test: True"
    actual = "Dtype test: %s, Null Test: %s" % (str(dtype_test), str(not null_test))
    print("TEST %s: %s, expected value:%s, actual value:%s\n\t%r/%r points awarded" %
          ("PASSED" if success else "FAILED", description, expected, actual, status_awarded, status))
    return status_awarded

# aggregating score for multiple tests.
def multiple_tests(tests,points):
    if all(tests):
        print("\n\nTEST SET PASSED: %f points awarded\n\n" % (points))
        return points
    else:
        print("\n\nTEST SET FAILED: %f points awarded\n\n" % (0))
        return 0

def single_test(test,points):
    if test:
        print("\n\nSINGLE TEST SET PASSED: %f points awarded\n\n" % (points))
        return points
    else:
        print("\n\nSINGLE TEST SET FAILED: %f points awarded\n\n" % (0))
        return 0



solution_arrest_path = ""
solution_offarr_path = ""

print("Downloading solution officers....")
solution_offarr_df = get_s3_pandas("")
solution_offarr_df["appointed_date"] = pd.to_datetime(solution_offarr_df["appointed_date"], infer_datetime_format=True)
solution_offarr_df["arrest_date"] = pd.to_datetime(solution_offarr_df["arrest_date"], infer_datetime_format=True)

print("Downloading solution arrests....")
solution_arrest_df = get_s3_pandas("")
solution_arrest_df["release_date"] = pd.to_datetime(solution_arrest_df["release_date"], infer_datetime_format=True)
solution_arrest_df["bond_date"] = pd.to_datetime(solution_arrest_df["bond_date"], infer_datetime_format=True)
solution_arrest_df["photographed_date"] = pd.to_datetime(solution_arrest_df["photographed_date"], infer_datetime_format=True)
solution_arrest_df["arrest_date"] = pd.to_datetime(solution_arrest_df["arrest_date"], infer_datetime_format=True)

def run_tests(student_solution_arrest_df, student_solution_offarr_df):
    student_solution_offarr_df.columns = [x.lower().replace(" ", "_").strip(punctuation) for x in student_solution_offarr_df.columns]
    student_solution_arrest_df.columns = [x.lower().replace(" ", "_").strip(punctuation) for x in student_solution_arrest_df.columns]




    #initialize points to 0
    points = 0

    # Tests to check counts of the arrests set and arresting officers set.
    points += single_test(my_assert_equal("Arrests Count",student_solution_arrest_df.shape[0],solution_arrest_df.shape[0],True),1)
    points += single_test(my_assert_equal("Officer-Arrests Count",student_solution_offarr_df.shape[0],solution_offarr_df.shape[0],True), 0.5)



    # check if you did an inner join and award points.
    points += single_test(my_assert_equal("Officer Arrests Join Check", student_solution_offarr_df.loc[student_solution_offarr_df['arrest_id'].notnull(),:].shape[0],
            solution_offarr_df.loc[solution_offarr_df['arrest_id'].notnull(),:].shape[0], True), 0.5)

    # Check if IDs are non-null and same type as the solution
    points += single_test(dtype_and_null("Arrests Dtype Check Int and Null values",student_solution_arrest_df,solution_arrest_df,True),1)
    points += single_test(dtype_and_null("Officers Arrests Dtype Check Int and Null values",student_solution_offarr_df,solution_offarr_df,True),1)

    # Checking if the number of all IDs are unique.
    if student_solution_arrest_df.shape[0] > 0:
        points += single_test(my_assert_equal("Unique Arrest Set IDs",student_solution_arrest_df['id'].nunique(dropna = False),student_solution_arrest_df['id'].shape[0], True),1)
    else:
        print("Empty Arrest Data, Cannot Increase Score")
    if student_solution_offarr_df.shape[0] > 0:
        points += single_test(my_assert_equal("Unique Officer Arrest Set IDs",student_solution_offarr_df['id'].nunique(dropna = False),student_solution_offarr_df['id'].shape[0], True), 1)
    else:
        print("Empty Officer Arrest Dataframe, Cannot Increase Score")
    # Checking if count of and value of Arrest years matches solution's
    points += single_test(my_assert_equal("Arrest Year Check", (solution_arrest_df["arrest_year"][solution_arrest_df["arrest_year"].isin(student_solution_arrest_df["arrest_year"])].count() == solution_arrest_df["arrest_year"].count())
                                                                and (solution_arrest_df["arrest_year"].count() == student_solution_arrest_df["arrest_year"].count()),
                            True, True), 1)
    points += single_test(my_assert_equal("Officer Arrest Year Check", (solution_offarr_df["arrest_year"][solution_offarr_df["arrest_year"].isin(student_solution_offarr_df["arrest_year"])].count() == solution_offarr_df["arrest_year"].count())
                                                                and (solution_offarr_df["arrest_year"].count() == student_solution_offarr_df["arrest_year"].count()),
                            True, True), 1)


    # Dates checking. Values and counts should match.
    try:
        student_solution_arrest_df["release_date"] = pd.to_datetime(student_solution_arrest_df["release_date"], infer_datetime_format=True)
        student_solution_arrest_df["bond_date"] = pd.to_datetime(student_solution_arrest_df["bond_date"], infer_datetime_format=True)
        student_solution_arrest_df["photographed_date"] = pd.to_datetime(student_solution_arrest_df["photographed_date"], infer_datetime_format=True)
        student_solution_arrest_df["arrest_date"] = pd.to_datetime(student_solution_arrest_df["arrest_date"], infer_datetime_format=True)

        date_truth = any(~solution_arrest_df["release_date"].isin(student_solution_arrest_df["release_date"])) or any(~solution_arrest_df["bond_date"].isin(student_solution_arrest_df["bond_date"])) or any(~solution_arrest_df["photographed_date"].isin(student_solution_arrest_df["photographed_date"])) or any(~solution_arrest_df["arrest_date"].isin(student_solution_arrest_df["arrest_date"]))
        points += single_test(my_assert_equal("Arrest Dates Check", (not date_truth) and (all(solution_arrest_df[["release_date","bond_date","photographed_date","arrest_date"]].count() == student_solution_arrest_df[["release_date","bond_date","photographed_date","arrest_date"]].count())),
                                True, True), 2)
    except Exception as error:
        print("Date Arrests error: "+ repr(error))
        points += 0


    try:
        student_solution_offarr_df["appointed_date"] = pd.to_datetime(student_solution_offarr_df["appointed_date"], infer_datetime_format=True)
        student_solution_offarr_df["arrest_date"] = pd.to_datetime(student_solution_offarr_df["arrest_date"], infer_datetime_format=True)

        date_off_truth = any(~solution_offarr_df["appointed_date"].isin(student_solution_offarr_df["appointed_date"])) or any(~solution_offarr_df["arrest_date"].isin(student_solution_offarr_df["arrest_date"]))
        points += single_test(my_assert_equal("Officer Arrest Dates Check", (not date_off_truth) and (all(solution_offarr_df[["appointed_date","arrest_date"]].count() == student_solution_offarr_df[["appointed_date","arrest_date"]].count())),
                                True, True), 2)
    except Exception as error:
        print("Date Officer Arrests error: "+ repr(error))
        points += 0


    # Checking police names.
    try:
        print("Checking officer names, this may take some time........")
        hits = 0
        inter = (solution_offarr_df[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower())).merge(student_solution_offarr_df[["id","first_name", "middle_initial","last_name","suffix_name"]].fillna("nan").apply(lambda x: x.astype(str).str.lower()))
        hits = inter.shape[0]
        points_score = (10.0/float(solution_offarr_df[["id","first_name", "middle_initial","last_name","suffix_name"]].shape[0]))*hits
        points += points_score
    except Exception as error:
        print("Date Officer Arrests error: "+ repr(error))
        points_score = 0
    print("\n\nTEST Names/ID Match: %f/10.0 points awarded\n\n" % (points_score))


    print("Checking arrest IDs....")
    hits = 0

    inter = solution_offarr_df[["id","arrest_id"]].merge(student_solution_offarr_df[["id","arrest_id"]])
    hits = inter.shape[0]
    print(hits,  solution_offarr_df[["id","arrest_id"]].shape[0])
    points_score = (3.0/float(solution_offarr_df[["id","arrest_id"]].shape[0])) * float(hits)
    if hits > solution_offarr_df[["id","arrest_id"]].shape[0]:
        points_score = 3.0

    print("\n\nTEST Arrest ID/IDs Match: %f/3 points awarded\n\n" % (points_score))
    points += points_score
    print("TOTAL SCORE = %f/%f"% (points, 25.00))
    return points

results = []
for index, row in student_urls.iterrows():
    team_name = row["Team Name"]
    print("Handling team", team_name)
    if len(row["data_arrest URL"].split("s3://northwestern.amer.trifacta.net/")) > 1:
        student_arr_url = row["data_arrest URL"].split("s3://northwestern.amer.trifacta.net/")[1]
    if len(row["data_officerarrest URL"].split("s3://northwestern.amer.trifacta.net/")) > 1:
        student_offarr_url = row["data_officerarrest URL"].split("s3://northwestern.amer.trifacta.net/")[1]

    try:
        print("Downloading student arrests....",student_arr_url)
        student_arr = get_s3_pandas(student_arr_url)
    except:
        student_arr = pd.DataFrame(columns=solution_arrest_df.columns )
        print ("NO ARREST CSV ERROR")

    try:
        print("Downloading student officers....",student_offarr_url)
        student_offarr = get_s3_pandas(student_offarr_url)
    except:
        student_offarr = pd.DataFrame(columns=solution_offarr_df.columns)
        print ("NO OFFICER ARREST CSV ERROR")
    print(student_arr)
    try:
        curr_points = run_tests(student_arr,student_offarr)
    except Exception as error:
        print("Something happened for this team\n")
        print('Caught this error: ' + repr(error))
        print("Arrests:", student_arr.columns)
        print("Officer Arrests:", student_offarr.columns)
        curr_points = 0
    results.append([team_name,curr_points])
print(results)