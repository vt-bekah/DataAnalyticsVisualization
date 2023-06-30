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
candidate_votes = {}

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
        if row[2] not in candidate_votes.keys():
            candidate_votes[row[2]] = 1
        # if candidate is in the list, find teh index and increase the vote count by 1
        else:
            candidate_votes[row[2]] +=1


# determine the list index of the winner to use in the results output


# print the desired results to the console
print("Election Results\n----------------------------\n")
print(f"Total Votes: {total_votes}\n")
print("----------------------------\n")
for key, value in candidate_votes.items():
    print(f"{key}: {round(100*value/total_votes,3)}% ({value})")
print("----------------------------\n")
# reference for getting max dictionary values https://datagy.io/python-get-dictionary-key-with-max-value/
print(f"Winner: {[key for key, value in candidate_votes.items() if value == max(candidate_votes.values())]}\n") # allows multiple winners printed as list
print(f"Winner: {max(candidate_votes, key=candidate_votes.get)}\n") # stops on first winner if a tie
print("----------------------------\n")

# Store the desired results in a text file

# # use the text path below if running terminal in VScode
# resultspath = os.path.join(os.getcwd(), "GitRepo\python-challenge\PyPoll", "analysis", "PyPoll_results.txt")
# # use the text path below if running from GitBash in the comics.py location
# # resultspath = os.path.join(os.getcwd(), "analysis", "PyPoll_results.txt")

# # referenced freecodecamp for writing to a text file: https://www.freecodecamp.org/news/file-handling-in-python/
# # create file; if it already exists, this will overwrite the current file
# file = open(resultspath, "w")

# # write results to the file - one result per line
# file.write("Election Results\n----------------------------\n")
# file.write(f"Total Votes: {total_votes}\n")
# file.write("----------------------------\n")
# for i in range(len(candidates)):
#     file.write(f"{candidates[i]}: {percent_votes[i]}% ({candidate_votes[i]})\n")
# file.write("----------------------------\n")
# file.write(f"Winner: {candidates[winner_index]}\n")
# file.write("----------------------------\n")

# # close file
# file.close()