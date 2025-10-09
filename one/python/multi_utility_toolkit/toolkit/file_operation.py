# toolkit/file_operation.py
import os

def create_file():
    filename = input("Enter filename to create: ")
    try:
        with open(filename, 'x') as f:
            print(f"File '{filename}' created successfully.")
    except FileExistsError:
        print("File already exists.")

def write_to_file():
    filename = input("Enter filename to write to: ")
    content = input("Enter content to write: ")
    try:
        with open(filename, 'w') as f:
            f.write(content)
        print(f"Content written to '{filename}'.")
    except FileNotFoundError:
        print("File not found.")

def read_from_file():
    filename = input("Enter filename to read: ")
    try:
        with open(filename, 'r') as f:
            content = f.read()
            print(f"\nContents of '{filename}':\n{content}")
    except FileNotFoundError:
        print("File not found.")

def delete_file():
    filename = input("Enter filename to delete: ")
    try:
        os.remove(filename)
        print(f"File '{filename}' deleted successfully.")
    except FileNotFoundError:
        print("File not found.")

def file_menu():
    while True:
        print("""
File Operations:
1. Create a File
2. Write to a File
3. Read from a File
4. Delete a File
5. Back to Main Menu
        """)
        choice = input("Enter your choice: ")

        if choice == '1':
            create_file()
        elif choice == '2':
            write_to_file()
        elif choice == '3':
            read_from_file()
        elif choice == '4':
            delete_file()
        elif choice == '5':
            break
        else:
            print("Invalid choice. Please try again.")
