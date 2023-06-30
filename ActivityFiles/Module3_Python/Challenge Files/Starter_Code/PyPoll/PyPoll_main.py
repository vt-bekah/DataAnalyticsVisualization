# You will be given a set of poll data called election_data.csv. The dataset is composed of three columns: "Voter ID", "County", and "Candidate". Your task is to create a Python script that analyzes the votes and calculates each of the following values:
    # The total number of votes cast
    # A complete list of candidates who received votes
    # The percentage of votes each candidate won
    # The total number of votes each candidate won
    # The winner of the election based on popular vote

# Import the os module to allow creating file paths across operating systems
import os

# Module for interacting with CSV files
import csv

# use the csvpath below if running terminal in VScode
csvpath = os.path.join(os.getcwd(), "GitRepo\python-challenge\PyPoll", "Resources", "election_data.csv")
# use the csvpath below if running from GitBash in the comics.py location
# csvpath = os.path.join(os.getcwd(), "Resources", "election_data.csv")

# Initialize variables used to store numeric data
total_votes = 0
candidates = []
candidate_votes = []
percent_votes = []

with open(csvpath, 'r') as csvfile:

    # CSV reader specifies delimiter and variable that holds contents
    csvreader = csv.reader(csvfile, delimiter=',')

    # Read the header row first 
    csv_header = next(csvreader)
    print(f"CSV Header: {csv_header}")

    # Read each row of data after the header
    for row in csvreader:
        # increase total vote count by 1 
        total_votes +=1

        # if name is not captured in the candidates list, add it and start the vote count
        if row[2] not in candidates:
            candidates.append(row[2])
            candidate_votes.append(1)
        # if candidate is in the list, find teh index and increase the vote count by 1
        else:
            candidate_votes[candidates.index(row[2])] +=1

# calculate the percent of votes and store in a list
for v in candidate_votes:
    percent_votes.append(round((100*v/total_votes),3))

# determine the list index of the winner to use in the results output
winner_index = candidate_votes.index(max(candidate_votes))

# print the desired results to the console
print("Election Results\n----------------------------\n")
print(f"Total Votes: {total_votes}\n")
print("----------------------------\n")
for i in range(len(candidates)):
    print(f"{candidates[i]}: {percent_votes[i]}% ({candidate_votes[i]})")
print("----------------------------\n")
print(f"Winner: {candidates[winner_index]}\n")
print("----------------------------\n")

# Store the desired results in a text file

# use the text path below if running terminal in VScode
resultspath = os.path.join(os.getcwd(), "GitRepo\python-challenge\PyPoll", "analysis", "PyPoll_results.txt")
# use the text path below if running from GitBash in the comics.py location
# resultspath = os.path.join(os.getcwd(), "analysis", "PyPoll_results.txt")

# referenced freecodecamp for writing to a text file: https://www.freecodecamp.org/news/file-handling-in-python/
# create file; if it already exists, this will overwrite the current file
file = open(resultspath, "w")

# write results to the file - one result per line
file.write("Election Results\n----------------------------\n")
file.write(f"Total Votes: {total_votes}\n")
file.write("----------------------------\n")
for i in range(len(candidates)):
    file.write(f"{candidates[i]}: {percent_votes[i]}% ({candidate_votes[i]})\n")
file.write("----------------------------\n")
file.write(f"Winner: {candidates[winner_index]}\n")
file.write("----------------------------\n")

# close file
file.close()