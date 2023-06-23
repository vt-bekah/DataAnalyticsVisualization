import random

# Print Hello User!
print("Hello User!")

# Take in User Input
user_name = input("What is your name? ")

# Respond Back with User Input
print(f"Hello {user_name}!")


# Take in the User Favorite Number
user_number = input("What is your favorite real number from -1000 to 1000? ")

# Respond Back with a statement based on your favorite number
comp_number = random.randrange(-1000, 1000)

if float(user_number) == float(comp_number):
    print("Your favorite number is the same as mine!")
elif float(user_number) > float(comp_number):
    print(f"Your favorite number, {user_number}, is higher than mine, {comp_number}.")
elif float(user_number) < float(comp_number):
    print(f"Your favorite number, {user_number}, is less than mine, {comp_number}.")
