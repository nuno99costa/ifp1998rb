-- Exercise from Introduction to Functional Programming
--1.1.1
square:: (Num a) => a -> a
square x = x * x

quad:: (Num a) => a -> a
quad x = square (square x)