# Import the os module to allow creating file paths across operating systems
import os
# Module for interacting with CSV files
import csv

# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "GitRepo\DataAnalyticsVisualization\ActivityFiles\Module3_Python\Class3", "01-Evr_CerealCleaner", "Resources", "cereal.csv")
# use the csvpath below if running from GitBash appropriate class location
# csvpath = os.path.join(os.getcwd(), "Resources", "cereal.csv")

with open(csvpath) as csvfile:
    
    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')
    
    # skip the header row
    next(csvreader, None)

    # Read through the remaining rows
    for row in csvreader:
        
        # Find the cereals that contain five grams of fiber or more,
        if float(row[7]) >= 5:

            # Print the data from those rows to the terminal
            print(row)


