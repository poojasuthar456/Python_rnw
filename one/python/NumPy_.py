import numpy as np

class DataAnalytics:
    def __init__(self):
        self.__array = None

    def create_array(self, dimens):
        try: 
            if dimens == 1:
                size = int(input("Enter the size of 1D array: "))
                values = list(map(float, input(f"Enter {size} elements: ").split()))
                self.__array = np.array(values)

            elif dimens ==2:
                rows = int(input("Enter the number of rows: "))
                cols = int(input("Enter number of columns: "))
                size = rows * cols
                values = list(map(float, input(f"Enter {size} elements: ").split()))
                self.__array = np.array(values).reshape (rows, cols)

            elif dimens ==3:
                depth = int(input("Enter depth: "))
                rows = int(input("Enter number of rows: "))
                cols = int(input("Enter number of columns: "))
                size = depth * rows * cols
                values = list(map(float, input(f"Enter {size} elements: ").split()))
                self.__array = np.array(values).reshape(depth, rows, cols)

            return self.__array
        except Exception as e:
            return f"Error: {e}"
        
    def perform_operation(self, other_array, operation):
        try: 
            other = np.array(other_array).reshape(self.__array.shape)
            operations = {
                "add": self.__array + other,
                "sub": self.__array - other,
                "mul": self.__array * other,
                "div": self.__array / other  # corrected spelling from 'dev' to 'div'
            }
            return operations.get(operation, "Invalid operation")
        except Exception as e:
            return f"Error: {e}"
        
    def combine(self, other_array):
        try:
            other = np.array(other_array).reshape(self.__array.shape)
            return np.vstack([self.__array, other])
        except Exception as e:
            return f"Error: {e}"
        
    def split(self, num):
            return np.array_split(self.__array, num)
    
    def search(self, value):
        return np.where(self.__array == value)
    
    def sort(self):
        return np.sort(self.__array)

    
    def filter(self, threshold):
        return self.__array[self.__array > threshold]

    
    def aggregate_stat(self, stat):
        # fun = is the function which is used to find sum, mean, median, std, var
        fun ={
            "sum": np.sum,
            "mean": np.mean,
            "median": np.median,
            "std": np.std,
            "var": np.var
        }
        return fun.get(stat, lambda x: "Invalid stat")(self.__array)
    
    def stat_properties(self):
        return{
            "min": np.min(self.__array),
            "max": np.max(self.__array),
            "25%": np.percentile(self.__array, 25),
            "50%": np.percentile(self.__array, 50),
            "75%": np.percentile(self.__array, 75)
        }

    def get_shape(self):
        return self.__array.shape if self.__array is not None else ()
    
    def get_array(self):
        return self.__array
    

# Main file
print("Welcome to the NumPy Analyzer!\n"+"==" * 20)
def main():
    analyzer = DataAnalytics()
    while True:
        choose = input("""Choose an option:
1. Create a NumPy Array
2. Perform Mathematical Operations
3. Combine or Split Arrays
4. Search, Sort, or Filter Arrays
5. Compute Aggregates and Statistics
6. Exit

Enter Your Choice: """)

        if choose == '1':
            select = input("""\nSelect the type of array to create:
                            1. 1D Array
                            2. 2D Array
                            3. 3D Array\n
                            Enter your choice: """)
            if select in ['1', '2', '3']:
                print(analyzer.create_array(int(select)))

        elif choose == '2':
            op = input("""\nMathematical Operation:
                1. Addition
                2. Subtraction
                3. Multiplication
                4. Division
                Enter Your Choice: """)
            op_map = {'1': 'add', '2': 'sub', '3': 'mul', '4': 'div'}
            shape = analyzer.get_shape()
            values = list(map(float, input(f"Enter {np.prod(shape)} values: ").split()))
            print(analyzer.perform_operation(values, op_map.get(op, "")))

        elif choose == '3':
            three = input("1. Combine\n2. Split\nEnter your choice: ")
            if three == '1':
                shape = analyzer.get_shape()
                vals = list(map(float, input("Enter elements to combine: ").split()))
                print(analyzer.combine(vals))
            
            elif three =='2':
                print(analyzer.split(int(input("Enter number of splits: "))))

            else:
                print("Invalid Choice, Please choose between 1 or 2")
                

        elif choose == '4':
            four = input("1. Search\n2. Sort\n3. Filter\nEnter your choice: ")
    
            if four == '1':
                val = float(input("Enter value to search: "))
                print(analyzer.search(val))
            
            elif four == '2':
                print("Sorted Array:")
                print(analyzer.sort())
            
            elif four =='3':
                t = float(input("Enter threshold to filter: "))
                print("Filtered Array:")
                print(analyzer.filter(t))

            else:
                print("Invalid Choice, Please choose between 1 to 3")
                

        elif choose =='5':
            five = input("""1. Sum
            2. Mean
            3. Median
            4. Std
            5. Var
            6. Properties
            Enter Your Choice: """)
            statis = {'1': 'sum', '2': 'mean', '3': 'median', '4': 'std', '5': 'var'}
            if five in statis:
                print(analyzer.aggregate_stat(statis[five]))
            else:
                print(analyzer.stat_properties())

        elif choose == '6':
            print("Thank you for using NumPy Analyst. Goodbye!")
            break
        else:
            print("Please choose betwenn 1 to 6")
        

if __name__ == "__main__":
    main()