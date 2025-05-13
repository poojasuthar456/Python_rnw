print("Welcome to the client data organizer!")

Student=[]

while True:
    option = input("""Select an Option:\n
                    1. Add Student\n
                    2. Display All Students\n
                    3. Update Student Information\n
                    4. Delete Student\n
                    5. Display Subject Offered\n
                    6.Exit\n
                    Enter Your Choice:""")
    
    if option=='1':
        
        temp = []
        
        print("Enter Student details:")
        
        ID = (input("Enter Student ID:"))
        Name = input("Enter Student's Name:")
        DOB = input("Date of birth[DD/MM/YYYY]:")
        Age = input("Enter Your Age:")
        subject = input("Enter Your Subjects:")
        Grade = input("Enter Your Grade:")
        
        temp.append(ID)
        temp.append(Name)
        temp.append(DOB)
        temp.append(Age)
        temp.append(subject)
        temp.append(Grade)
        
        Student.append(temp)

        print("Student Added Successfully")
    
    elif option=='2':
        print("Display All Student:")
        # print(ID,Name, DOB, Age, subject, Grade )
        print(Student)

    elif option=='3':
        update= input("Enter Student's ID:")
        found = False
        for i in range(len(Student)):
            if Student[i][0]==update:
                found = True
                change = input("""What do you wanna change?\n
                            1. if you wanna change the name:\n
                            2. if you wanna change the date of birth:\n
                            3. if you wanna change the age:\n
                            4. if you wanna change the subject:\n
                            5. if you wanna change the grade:""")
                

                if change=='1':
                    Student[i][1]=input("Enter the new name:")
                elif change=='2':
                    Student[i][2]=input("Enter the new date of birth[DD/MM/YYYY]:")
                elif change=='3':
                    Student[i][3]=input("Enter the new age:")
                elif change=='4':
                    Student[i][4]=input("Enter the new subject:")
                elif change=='5':
                    Student[i][5]=input("Enter the new Grade:")
                else:
                    print("Invalid entry")
                print("Student date updated successfully")
                break
        if not found:
            print("Student ID not found.")
            
    elif option =='4':
        delete= input("Enter the ID of the student to delete:")
        for i in range(len(Student)):
            if Student[i][0] == delete:
                del Student[i]
                print("Student's ID deleted successfully.")
                break
        else:
            print("Student's ID not found.")

    elif option =='5':
        subjects = []
        for i in range(len(Student)):
            s = Student[i][4].split(',')
            subjects.append(s)
        print(list(set(s)))



    elif option =='6':
        print("Exiting the program.")

    else:
        print("Invalid choice, please try again.")        
        
        

        