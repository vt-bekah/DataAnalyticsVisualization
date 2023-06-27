import os
import csv

# Path to collect data from the Resources folder

# print('Get current working directory : ', os.getcwd()) # C:\Users\vt_be\UTA_DAV\GitRepo
# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "DataAnalyticsVisualization\ActivityFiles", "Module3_Python\Class2", "09-Stu_ReadComicBooksCSV", "Resources", "comic_books.csv")
# use the csvpath below if running from GitBash in the comics.py location
# csvpath = os.path.join(os.getcwd(), "Resources", "comic_books.csv")


# Define the function and have it accept the 'state_data' as its sole parameter


# Find the total students

# Find the total graduates

# Find the public school graduation rate

# Remember that some states do not have nonprofit or forprofit private schools
# Find the non-profit school graduation rate

# Find the for-profit school graduation rate

# Calculate the overall graduation rate

# Print out the state's name and its graduation rates


# Read in the CSV file
with open(graduation_csv, 'r') as csvfile:

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
