# set the variable for continuing to the value that will execute to start
user_continue = "y"

while user_continue == "y":
    # since we are resetting to 0 every time the loop executes, set count to zero here
    count = 0
    # ask how many numbers
    newnumber = input("How many numbers? ")
    # go to range + 1 because we are to instructed to start a zero and end on the number given
    for i in range(0, int(newnumber) + 1):
        print(count)
        count +=1
    # ask user if they want to continue and store it in the variable that while acts on
    user_continue = input("Do you want to continue (y/n)? ")
