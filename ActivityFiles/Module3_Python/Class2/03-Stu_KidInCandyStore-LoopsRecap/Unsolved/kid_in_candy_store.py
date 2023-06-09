# The list of candies to print to the screen
candy_list = ["Snickers", "Kit Kat", "Sour Patch Kids", "Juicy Fruit", "Swedish Fish", "Skittles", "Hershey Bar", "Starbursts", "M&Ms"]

# The amount of candy the user will be allowed to choose
allowance = 5

# The list used to store all of the candies selected inside of
candy_cart = []

# Print out options
for i in range (0, len(candy_list)-1):
    print(f"[{i}] {candy_list[i]}")

# Prompt the user to input their selection until their allowance runs out
for i in range (0, allowance):
    selection = int(input("Please select your candy by number: "))
    candy_cart.append(candy_list[selection])

# Print what was selected
print("You selected:")
for candy in candy_cart:
    print(candy)

