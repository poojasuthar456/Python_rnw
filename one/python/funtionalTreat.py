print("Welcome to the Data Analyzer and Transfomer Program!")

 
data_main =[]
data_1 =[]          

while True:

    menu = input("""Main Menu \n
                1. Input Data \n
                2. Display Data Summary \n
                3. Calculate Factorial \n
                4. Filter Data \n
                5. Sort Data\n
                6. Display Dataset Statistics \n
                7. Exit Program \n
                Please Enter Your Choice:""")

    if menu =='1':
            data= (input("Enter data for a 1D array(separated by spaces):"))
            data_main = data.split()
            data_1=list(map(int,data_main))
            print("Data has been stored successfully!", data_main)

    elif menu =='2':
        print("Data Summary:")
        count=len(data_1)
        print("Total elements:", count)
        print("Minimum value:", min(data_1))
        print("Maximum value:", max(data_1))
        print("Sum of all values:", sum(data_1))
        avg= (sum(data_1)/len(data_1))
        print("Average value:" ,avg)

    elif menu =='3':
    
    #User Define Function for factorial
        def factorial(n):
            if n<=1:
                return 1
            else:
                print(n)
                return n * factorial(n-1)
            
        f = int(input("Enter any number:-"))
        print(factorial(f))
        
    elif menu == '4':
        if not data_1:
              print("No data available. Please input data first.")

        else:
            threshold = int(input("Enter a threshold value to filter out data above this value: "))
            f_data = [num for num in data_1 if num >= threshold]
            print(f"Filtered Data(values >= {threshold}):{f_data}")

    elif menu =='5':
        choose=input(""" Choose sorting option\n
                     1. Ascending\n
                     2. Descending\n
                     Enter Your Choice: """)
        
        if choose =='1':
            data_1.sort()
            print("Sorted Data in Ascending Order:", data_1)

        elif choose =='2':
            data_1.sort(reverse=True)
            print("Sorted Data in Descending Order:", data_1)
        else: 
            print("Invalid choice. Please choose between 1 or 2.")

    elif menu =='6':
        if not data_1:
            print ("No data available. Please input data first.") 
        else:
            from statistics import mean
            print("Data Statistics:")
            print("minimum value: ", min(data_1))
            print("Maximum value: ", max(data_1))
            print("Sum of all value: ",sum(data_1))
            print("Average value: ", mean(data_1))


    elif menu =='7':
        print("Thank you for using the Data Analyzer and Transformer Program. Goodbye!")
        break

            

