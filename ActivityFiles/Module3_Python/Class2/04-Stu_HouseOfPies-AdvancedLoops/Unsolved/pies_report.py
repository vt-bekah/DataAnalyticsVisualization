print("```\nWelcome to the House of Pies! Here are our pies:\n \n---------------------------------------------------------------------\n (1) Pecan, (2) Apple Crisp, (3) Bean, (4) Banoffee,  (5) Black Bun, (6) Blueberry, (7) Buko, (8) Burek,  (9) Tamale, (10) Steak\n````")

pie_list=["Pecan", "Apple Crisp", "Bean", "Banoffee", "Black Bun", "Blueberry", "Buko", "Burek", "Tamale", "Steak"]

hungry = "y"
pie_count = 0
pie_order = []

while hungry == "y":
    # * Then, prompt the user to enter the number for the pie they would like to order.
    pie_num = int(input("Please enter the number for the pie you want: "))
    # * Immediately follow up their order with `Great! We'll have that <PIE NAME> right out for you`
    print(f"Great! We'll have that {pie_list[pie_num - 1]} right out for you")
    pie_order.append(pie_list[pie_num - 1])
    pie_count +=1
    # then ask if they would like to make another order. If so, repeat the process.
    hungry = input("Would you like to make another order (y/n)? ")

# * Once the user is done purchasing pies, print the complete list of pies with # ordered of each.
print("```\nYou purchased:")
for pie in pie_list:
    count = pie_order.count(pie)
    print(f"{count}  {pie}")
print("```")
