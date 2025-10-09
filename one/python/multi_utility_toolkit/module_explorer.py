# module_explorer.py

def explore_module_attributes():
    module_name = input("Enter the module name to explore: ")
    try:
        module = __import__(module_name)
        attributes = dir(module)
        print(f"\nAttributes in module '{module_name}':\n")
        for attr in attributes:
            print(attr)
    except ModuleNotFoundError:
        print(f"Module '{module_name}' not found.")
    except Exception as e:
        print(f"An error occurred: {e}")
