class Person:
    def __init__(self,name,age):
        self.name = name
        self.age = int(age)

    def display(self):
        print(f"Person creted with the name: {self.name}, and an age: {self.age}")


class Employee(Person):
    def __init__(self,name, age, emp_id, salary):
        super().__init__(name,age)  
        self.emp_id = emp_id
        self.salary = float(salary)

    def display(self):
        super().display()
        print(f"Employee ID: {self.emp_id}, and Salary: ₹{self.salary}")

    def get_salary(self):
        return self.salary
    
    def get_emp_id(self):
        return self.emp_id
    
    def __gt__(self, other):
        if self.salary > other.get_salary():
            return True
        elif self.salary == other.get_salary():
            return self.emp_id > other.get_emp_id()
        else:
            return False
    
    def __eq__(self, other):
        return self.salary == other.get_salary()

        
class Manager (Employee):
    def __init__ (self, name , age , emp_id, salary, department):
        super().__init__(name, age, emp_id, salary)
        self.department = department

    def display (self):
        super ().display()
        print(f"and Department: {self.department}")


people = []

while True:
    choose=input("""Choose an operation:\n
             1. Create a Person\n
             2. Create an Employee\n
             3. Create a Manager\n
             4. Show Details\n
             5. Compare Salaries\n
             6. Exit\n
             \n
             Enter your choice: """)
    
    if choose == '1':
        name = input("Name: ")
        age = input("Age:")
        p = Person(name,age)
        people.append(p)
        print("Person added.")


    elif choose == '2':
        name = input("Name: ")
        age = input("Age: ")
        emp_id = input("Employee ID: ")
        salary = input("salary: ₹")
        e = Employee(name, age, emp_id, salary)
        people.append(e)
        print("Employee added.")


    elif choose =='3':
        name = input ("Name: ")
        age = input("Age: ")
        emp_id = input("Employee ID: ")
        salary = input("Salary: ₹")
        department  = input("Department: ")
        m = Manager(name, age, emp_id, salary, department)
        people.append(m)
        print ("Manager added.")
        

    elif choose =='4':
        show_choice = input("""Option: \n
        1. Person  \n
        2. Employee  \n
        3. Manager  \n
        4. Exit \n
        \n
        Enter Your Choice:  """)
         
        if show_choice =='1': 
             print("\n ---Persons ---")
             for person in people:
                 if isinstance(person, Person ) and not isinstance (person, Employee):
                     person.display()
                     print("-"* 20)

        elif show_choice =='2':
            print ("n --- Employees---")
            for emp in people:
                if isinstance(emp, Employee) and not isinstance (emp, Manager):
                    emp.display()
                    print("-"* 20)

        elif show_choice =='3':
            print("\n ---Managers ---")
            for mgr in people:
                if isinstance(mgr, Manager):
                    mgr.display()
                    print("-" * 20)

        elif show_choice == '4':
            continue
        else:
            print ("Invalid option!")


    elif choose =='5':
        id1 = input("Enter the First Employee ID: ")
        id2 = input("Enter the Second Employee ID: ")

        emp1 = emp2 = None
        for person in people:
            if isinstance(person , Employee):
                if person.get_emp_id() == id1:
                    emp1 =person
                if person.get_emp_id() == id2:
                    emp2 = person

        if not emp1 or not emp2:
            print("Employee ID not found.")

        else:
            if emp1 > emp2:
                print(f"{emp1.name} has higher salary than {emp2.name}. ")

            elif emp2 > emp1:
                print(f"{emp2.name} has higher salary than {emp1.name}.")

            elif emp1 == emp2:
                print("Both have the same salary.")



    elif choose =='6':
        print("BBye! program exited.")
        break

    else:
        print("Invalid choice, try again.") 


                    
    


        