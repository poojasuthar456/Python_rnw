print("Welcome to personal Journal Manager!")

import os 
from datetime import datetime

class Journal:
    def __init__(self, filename="MyJournal.txt"):
        self.filename = filename

    def add_entry(self):
        Enter = input("Enter your journal entry:\n")
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")        
        try:
            with open(self.filename, "a") as file:
                file.write(f"[{timestamp}]-\n {Enter}\n")
            print("Entry added successfully.\n")
        except PermissionError:
            print("Error: cannot write to the file (Permission denied)\n")

    def view_entries(self):
        try:
            with open(self.filename, "r")as file:
                contents= file.read()
                if contents:
                    print("journal Entries:\n")
                    print(contents)
                else:
                    print("No entries found\n")

        except FileNotFoundError:
            print("No journal entries found. start by adding a new entry!")

    def search_entry(self):
        keyword = input("Enter a keyword or date to search: ")
        found = False
        try:
            with open(self.filename, "r") as file:
                for line in file:
                    if keyword.lower() in line.lower():
                        print(line.strip())
                        found =True
            if not found:
                print("No matching entries found.\n")
        except FileNotFoundError:
            print("No journal file found. try searching something else!\n")

    def delete_entries(self):
        if not os.path.exists(self.filename):
            print("Journal file does not exist. \n")
            return
        confirmation = input("Are you sure you wanna delete all the entries? (yes/no):").lower()
        if confirmation =='yes':
            try:
                os.remove(self.filename)
                print("ALl entries deleted successfully.\n")
            except PermissionError:
                print("Deletion cancelled. \n")

def main():
    j = Journal()

    while True:
        choose=input("""Please select an option\n
                    \n
                    1. Add a New Entry\n
                    2. View All Entries\n
                    3. Search for an Entry\n
                    4. Delete All Entries\n
                    5. Exit.\n
                    \n
                    User Input:""")
        
        if choose =='1':
            j.add_entry()

        elif choose =='2':
            j.view_entries()
        
        elif choose == '3':
            j.search_entry()
        elif choose == '4':
            j.delete_entries()
        elif choose =='5':
            print("Exiting jouranl Manager. Goodbye!")
            break
        else:
            print("Invalid option. Please choose a number from 1 to 5. \n")

if __name__ == "__main__":
    main()
            
        