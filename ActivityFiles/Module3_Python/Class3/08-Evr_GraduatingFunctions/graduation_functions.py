# ## INCOMPLETE

import os
import csv

# Path to collect data from the Resources folder

# print('Get current working directory : ', os.getcwd()) # C:\Users\vt_be\UTA_DAV\GitRepo
# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "GitRepo\DataAnalyticsVisualization\ActivityFiles", "Module3_Python\Class3", "08-Evr_GraduatingFunctions", "Resources", "graduation_data.csv")
# use the csvpath below if running from GitBash in the comics.py location
# csvpath = os.path.join(os.getcwd(), "Resources", "comic_books.csv")

print(csvpath)

# Define the function and have it accept the 'state_data' as its sole parameter
def print_percentages(state_data):
    state = str(state_data[0])
    public_students = int(state_data[1])
    public_graduates = int(state_data[2])
    nonprofit_students = int(state_data[3])
    nonprofit_graduates = int(state_data[4])
    forprofit_students = int(state_data[5])
    forprofit_graduates = int(state_data[6])

# Find the total students
    total_students = public_students + nonprofit_students + forprofit_students

# Find the total graduates
    total_graduates = public_graduates + nonprofit_graduates + forprofit_graduates

    # note one way to format percent
    rate_to_percentage = lambda p: f'{round(p,2)} %' 
    # rate_to_percentage(75.1234567890)
    # Output "75.12 %"

# Find the public school graduation rate
    public_grad_rate = 100 * public_graduates / public_students
    public_grad_rate = rate_to_percentage(public_grad_rate)

# Remember that some states do not have nonprofit or forprofit private schools
# Find the non-profit school graduation rate
    if nonprofit_students == 0:
        nonprofit_grad_rate = 0
    else:
        nonprofit_grad_rate = rate_to_percentage(100 * nonprofit_graduates / nonprofit_students)
        

# Find the for-profit school graduation rate
    if forprofit_students == 0:
        forprofit_grad_rate = 0
    else:
        forprofit_grad_rate = rate_to_percentage(100 * forprofit_graduates / forprofit_students)

# Calculate the overall graduation rate
    overall_grad_rate = 100 * total_graduates / total_students
    overall_grad_pct = rate_to_percentage(overall_grad_rate)

# If the overall graduation rate is over 50, message is "Graduation success". 
    # Otherwise it is "State needs improvement".
    if overall_grad_rate > 50:
        message = "Graduation success"
    else:
        message = "State needs improvement"

# Print out the state's name and its graduation rates
    print(f"Stats for {state}")
    print(f"Public School Graduation Rate: {str(public_grad_rate)}")
    print(f"Private Non-Profit School Graduation Rate: {str(nonprofit_grad_rate)}")
    print(f"Private For-Profit School Graduation Rate: {str(forprofit_grad_rate)}")
    print(f"Overall Graduation Rate: {str(overall_grad_pct)}")
    print(f"{message}")


# Read in the CSV file
with open(csvpath, 'r') as csvfile:

    # Split the data on commas
    csvreader = csv.reader(csvfile, delimiter=',')

    header = next(csvreader)

    # Prompt the user for what state they would like to search for
    state_to_check = input("What state do you want to look for? ")

    # Loop through the data
    for row in csvreader:

        # If the state's name in a row is equal to that which the user input, run the 'print_percentages()' function
        if state_to_check == row[0]:
            print_percentages(row)
