# # Hobby Book: Dictionaries

# In this activity, you will create and access dictionaries that are based on your own hobbies.

# ## Instructions

# 1. Create a dictionary to store the following information:

# * Your name
# * Your age
# * A list of a few of your hobbies
# * A dictionary that includes a few days and the time you typically wake up on those days

info = {}

info["name"] = input("What is your name? ")
info["age"] = input("What is your age? ")
info["hobbies"] = input("What are your hobbies (separate by one space only)? ").split(" ")
info["days"] = {"Mon" : 6, "Tue" : 6, "Wed" : 6, "Thu" : 6, "Fri" : 6, "Sat" : 7, "Sun" : 6}

# 2. Print out your name, how many hobbies you have, and a time you typically wake up during the week.

print(info)

print(f"Hello {info['name']}. I see you are {info['age']} years old.")
print(f"You have {len(info['hobbies'])} hobbies.")
print(f"On Tuesday you get up at {info['days']['Tue']}")



