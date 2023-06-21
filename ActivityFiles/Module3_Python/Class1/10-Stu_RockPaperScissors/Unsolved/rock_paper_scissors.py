# Incorporate the random library
import random

# Print Title
print("Let's Play Rock Paper Scissors!")

# Specify the three options
options = ["r", "p", "s"]

# Computer Selection
computer_choice = random.choice(options)

# User Selection
user_choice = input("Make your Choice: (r)ock, (p)aper, (s)cissors? ")

# Run Conditionals
if user_choice == "r":
    if computer_choice == "r":
        print("tied")
    elif computer_choice == "p":
        print(f"computer wins: {computer_choice} beats {user_choice}")
    elif computer_choice =="s":
        print(f"user wins: {user_choice} beats {computer_choice}")
    else:
        print("glitch!")
elif user_choice == "p":
    if computer_choice == "r":
        print(f"user wins: {user_choice} beats {computer_choice}")
    elif computer_choice == "p":
        print("tied")
    elif computer_choice =="s":
        print(f"computer wins: {computer_choice} beats {user_choice}")
    else:
        print("glitch!")
elif user_choice == "s":
    if computer_choice == "r":
        print(f"computer wins: {computer_choice} beats {user_choice}")
    elif computer_choice == "p":
        print(f"user wins: {user_choice} beats {computer_choice}")
    elif computer_choice =="s":
        print("tied")
    else:
        print("glitch!")
else:
    print("user errored on input!")
