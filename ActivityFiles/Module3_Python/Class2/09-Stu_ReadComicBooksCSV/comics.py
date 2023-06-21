# Modules
import os
import csv

# Prompt user for title lookup
desired_title = input("What book title would you like to search? ")

# Set path for file
# print('Get current working directory : ', os.getcwd()) # C:\Users\vt_be\UTA_DAV\GitRepo
csvpath = os.path.join("..", "Resources", "comic_books.csv")
print(csvpath)

# Set variable to check if we found the video
found = False

# Open the CSV using the UTF-8 encoding
with open(csvpath, encoding='UTF-8') as csvfile:
    csvreader = csv.reader(csvfile, delimiter=",")

    print(csvreader[0])
    # Loop through looking for the video

            # Set variable to confirm we have found the video

    # If the book is never found, alert the user