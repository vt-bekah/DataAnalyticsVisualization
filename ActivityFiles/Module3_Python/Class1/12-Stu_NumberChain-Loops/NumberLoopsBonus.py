# Rather than just displaying numbers starting from 0, have the numbers begin at the end of the previous chain.

# set the variable for continuing to the value that will execute to start
user_continue = "y"

# since we are NOT resetting to 0 every time the loop executes, set count to zero here
count = 0

while user_continue == "y":
    # phrasing and behavior is slightly different on the first iteration so check if count = 0 and take those actions
    if count == 0:
        # ask how many numbers to print
        newnumber = input("How many numbers? ")
        # go to range + 1 because we are to instructed to start a zero and end on the number given
        for i in range(0, int(newnumber) + 1):
            print(count)
            count +=1
        # ask user if they want to continue and store it in the variable that while acts on
        user_continue = input("Do you want to continue (y/n)? ")

    elif count != 0:
        # ask how many numbers to add on to the list
        newnumber = input("How many more numbers? ")
        # go to range of the new number because we are only adding the requested numbers (no zero like to start)
        for i in range(0, int(newnumber)):
            print(count)
            count +=1
        # ask user if they want to continue and store it in the variable that while acts on
        user_continue = input("Do you want to continue (y/n)? ")

    
    

