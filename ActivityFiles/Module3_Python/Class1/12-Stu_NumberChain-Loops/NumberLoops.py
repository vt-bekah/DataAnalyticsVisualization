user_continue = "y"

while user_continue == "y":
    count = 0
    newnumber = input("How many numbers? ")
    for i in range(0, int(newnumber) + 1):
        print(count)
        count +=1
    user_continue = input("Do you want to continue (y/n)? ")
