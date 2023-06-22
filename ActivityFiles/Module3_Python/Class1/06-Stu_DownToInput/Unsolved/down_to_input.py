# Take input of you and your neighbor
your_name = input("What is your name? ")
neigh_name = input("What is your neighbor's name? ")
# Take how long each of you have been coding
your_code_time = input("How many months have you been coding? ")
neigh_code_time = input("How many months has your neighbor been coding? ")
# Add total month
total_months = your_code_time + neigh_code_time
# Print results
print(f"{your_name} and {neigh_name} have been coding for a total of {total_months} combined.")