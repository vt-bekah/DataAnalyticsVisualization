# Import the os module to allow creating file paths across operating systems
import os

# Import module for interacting with CSV files
import csv

# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "GitRepo\python-challenge\PyBank", "Resources", "budget_data.csv")
# use the csvpath below if running from GitBash in the comics.py location
# csvpath = os.path.join(os.getcwd(), "Resources", "budget_data.csv")

# Initialize variables used to store numeric data while reading csv file
mo_num = 0
total_prof_loss = 0
max_inc = 0
max_dec = 0

# open csv as read only
with open(csvpath, 'r') as csvfile:

    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')

    # Read the header row first 
    csv_header = next(csvreader)
    print(f"CSV Header: {csv_header}")

    # Read each row of data after the header
    for row in csvreader:
        # increase month count by 1 - this assumes each entry is a different month
        mo_num +=1 
        # keep a running total of the profit/losses
        total_prof_loss = total_prof_loss + int(row[1])
        # not sure what to do for avgt change yet...
        # if the current row is greater than the stored value for max_inc, update it
        if int(row[1]) > max_inc:
            max_inc = int(row[1])
            max_inc_date = row[0]
        # if the current row is less than the stored value for max_dec, update it
        if int(row[1]) < max_dec:
            max_dec = int(row[1])
            max_dec_date = row[0]

avg_change = round((total_prof_loss/mo_num),2)

# print the desired results to the console
print("Financial Analysis\n----------------------------\n")
print(f"Total Months: {mo_num}\n")
print(f"Total: ${total_prof_loss}\n")
print(f"Average Change: ${avg_change}\n")
print(f"Greatest Increase in Profits: {max_inc_date} (${max_inc})\n")
print(f"Greatest Decrease in Profits: {max_dec_date} (${max_dec})\n")

# Store the desired results in a text file

# use the text path below if running terminal in VScode
resultspath = os.path.join(os.getcwd(), "GitRepo\python-challenge\PyBank", "analysis", "PyBank_results.txt")
# use the text path below if running from GitBash in the comics.py location
# resultspath = os.path.join(os.getcwd(), "analysis", "PyBank_results.txt")

# referenced freecodecamp for writing to a text file: https://www.freecodecamp.org/news/file-handling-in-python/
# create file; if it already exists, this will overwrite the current file
file = open(resultspath, "w")

# write results to the file - one result per line
file.write("Financial Analysis\n----------------------------\n")
file.write(f"Total Months: {mo_num}\n")
file.write(f"Total: ${total_prof_loss}\n")
file.write(f"Average Change: ${avg_change}\n")
file.write(f"Greatest Increase in Profits: {max_inc_date} (${max_inc})\n")
file.write(f"Greatest Decrease in Profits: {max_dec_date} (${max_dec})\n")

# close file
file.close()