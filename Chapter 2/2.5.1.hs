-- Exercise from Introduction to Functional Programming
--2.5.1

--Instead of using ∨ and ∧, I'll use 'and' and 'or' for the function's name

and' :: Bool -> Bool -> Bool
and' x True = x
and' x False = False
 
or' :: Bool -> Bool -> Bool
or' x True = True
or' x False = x
    
and'' :: Bool -> Bool -> Bool
and'' x y
    | y == True && x == True = True
    | y == False && x == False = False
    | y == True && x == False = False
    | y == False && x == True = False
 
or'' :: Bool -> Bool -> Bool
or'' x y
    | y == True  && x == True = True
    | y == True  && x == False = True
    | y == False && x == False = False
    | y == False && x == True = True
