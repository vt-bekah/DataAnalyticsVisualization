# Import the os module to allow creating file paths across operating systems
import os
# Module for interacting with CSV files
import csv

# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "GitRepo\DataAnalyticsVisualization\ActivityFiles\Module3_Python\Class3", "01-Evr_CerealCleaner", "Resources", "cereal_bonus.csv")
# use the csvpath below if running from GitBash in the comics.py location
# csvpath = os.path.join(os.getcwd(), "Resources", "cereal_bonus.csv")

with open(csvpath) as csvfile:
    
    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')

    # Read through the rows
    for row in csvreader:
        
        # Find the cereals that contain five grams of fiber or more,
        if float(row[7]) >= 5:

            # Print the data from those rows to the terminal
            print(row)