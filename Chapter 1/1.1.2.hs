-- Exercises from Introduction to Functional Programming
--1.1.2
max:: (Ord a) => a -> a -> a
max x y
    | x < y = y
    | x > y = x
    | x == y = x