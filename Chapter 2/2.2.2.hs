-- Exercise from Introduction to Functional Programming
--2.2.1

--Solution using the comparison operators show in the book
sumsqrs a b c
    | a > c && b > c = a * a + b * b
    | a > c  && c > b = a * a + c * c
    | b > a = b * b + c * c
    | otherwise = a * a + c * c

--Solution using Haskell native functions
sumsqrs' a b c = (max a b) ^ 2 + (max (min a b) c) ^ 2