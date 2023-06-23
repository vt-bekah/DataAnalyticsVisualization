# Modules
import os
import csv

# Prompt user for title lookup
desired_title = input("What book title would you like to search? ")

# Set path for file
# print('Get current working directory : ', os.getcwd()) # C:\Users\vt_be\UTA_DAV\GitRepo
# use the csvpath below if running terminal in VScode
# csvpath = os.path.join(os.getcwd(), "DataAnalyticsVisualization\ActivityFiles", "Module3_Python\Class2", "09-Stu_ReadComicBooksCSV", "Resources", "comic_books.csv")
# use the csvpath below if running from GitBash in the comics.py location
csvpath = os.path.join(os.getcwd(), "Resources", "comic_books.csv")
print(csvpath)

# Set variable to check if we found the video
found = False

# Open the CSV using the UTF-8 encoding
with open(csvpath, encoding='utf-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    # Loop through looking for the video
    for row in csvreader:
        if row[0] == desired_title: # [#] indicates which column so-to-speak
            # Set variable to confirm we have found the video
            print(f"{row[0]} was published by {row[8]} in {row[9]}")
            found = True

    # If the book is never found, alert the user

if not found:
    print(f"{desired_title} was NOT found!")