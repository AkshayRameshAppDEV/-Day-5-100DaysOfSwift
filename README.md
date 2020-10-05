# Day-5-100DaysOfSwift
Day 5 of 100 Days of Swift.

# Day 5

## Learnt the following:

### 1. Functions
  - A block which can have multiple statements
  - avoids copy pasting of the code
  - Modular
  - Blocks can be reusable anywhere in code
  - Function with params - params should have a variable name and data type
  - Function can return values should have `'->` Data type' after function name
  - The return value can be captured because function returns and can be used elsewhere
  
  ### Returning Multiple values
  - can return array of values -> [String]
  - can return dictionary of key value pairs -> [String: Int]
  - can return tuple of params -> (first: String, last: String)
  - ***Best candidate is tuple***
  
  - External and Internal param names for the function
  - Replace the parameter name with underscore for the external name to omit parameter name
  - **Default params** - If param value is not given, it will take the default value if provided in the function creation
  
  
  - Variadic function - function that can accept multiple params of same type
  - three dots after the type
  - in this function can be array of elements which can be looped over
  
### What happens when function fails
  - Create a enum of Error type
  - Marks **throws** should be mentioned after params and before return value (->)
  - throw functions should be marked with try in the caller
  - when calling throws function surround with 
  ```swift
  do {
    try {
    
    }
  }catch {
  }
  ```
  ### Inout
   - This lets you change the param value in place
   - When calling the param inside calling function should be prepended with &
  
