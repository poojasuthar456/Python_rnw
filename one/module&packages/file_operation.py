# file_operation

def create_file(filename):
    try:
        with open(filename, 'x') as file:
            print(f"File '{filename}' created successfully.")
    except FileExistsError:
        print(f"File '{filename}' already exists.")

def write_file(filename, content):
    with open(filename, 'w') as file:
        file.write(content)
    print(f"Written to '{filename}' successfully.")

def read_file(filename):
    try:
        with open(filename, 'r') as file:
            data = file.read()
        print(f"Contents of '{filename}':\n{data}")
    except FileNotFoundError:
        print(f"File '{filename}' not found.")

def append_to_file(filename, content):
    try:
        with open(filename, 'a') as file:
            file.write(content)
        print(f"Appended to '{filename}' successfully.")
    except FileNotFoundError:
        print(f"File '{filename}' not found.")

def file_operations():
    while True:
        choice = int(input("""Enter Your Choice:\n"
            File Operations:\n
            1. Create a new file\n
            2. Write to a file\n
            3. Read from a file\n
            4. Append to a file\n
            5. Exit
            """))
        
        
        if choice == 1:
            name = input("Enter the name of the file you want to create: ")
            create_file(name)
        elif choice == 2:
            name = input("Enter the name of the file to write: ")
            content = input("Enter content to write: ")
            write_file(name, content)
        elif choice == 3:
            name = input("Enter the name of the file to read: ")
            read_file(name)
        elif choice == 4:
            name = input("Enter the name of the file to append: ")
            content = input("Enter content to append: ")
            append_to_file(name, content)
        elif choice == 5:
            print("Exiting the program.")
            break
        else:
            print("Invalid choice! Please try again.")


