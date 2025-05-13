print("Welcome to the program which can help you generate pattern or analyse number!")\

while True:

    choice = input("""Select an option: \n
                    1. Generate a Pattern \n
                    2. Analyze a Range of Numbers \n
                    3. Exit: \n
                   """)
    
    print("Enter your choice:", choice)

    if choice == '1':
        choose = input("""Choose a pattern type:" \n
                    1. Rigth-angled Triangle:  \n
                    2. Pyramid:  \n
                    3. Left-angled Triangle:\n
                       """)

        rows = int(input("Enter the number of rows in pattern:"))

        if choose =='1':

            for i in range(1, rows+1):
                for j in range(1,i+1):
                    print('*', end=' ')
                print()

        elif choose =='2':
            for i in range(1, rows + 1):
                for j in range(rows - i):
                    print(' ', end='')
                for p in range (2 * i - 1):
                    print('*', end='')
                print()

        elif choose =='3':
            for i in range(1, rows+1):
                for j in range(1, rows+1):
                    if (j<=rows-i):
                        print(" ",end =' ')
                    else:
                        print('*' , end=' ')
                print()
        else:
            print("Invalid Pattern")

    elif choice =='2':
    
        start= int(input("Enter the Start of the Range:"))
        end= int(input("Enter the end of the Range:"))

        even = []
        odd = []
        sum = 0

        for num in range(start, end):
            sum += num
            if num % 2==0:
                even.append(num)
                
                
            else:
                odd.append(num)

        print(" Even numbers are:",even)
        print("Odd number are.", odd)
        print("Sum of all numbers in the range=", sum)
    elif choice == '3':
        print("Thank you for using us, Goodbye!")
        break
