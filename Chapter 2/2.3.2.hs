-- Exercise from Introduction to Functional Programming
--2.3.1

--Solution that accepts float point numbers
digitval :: String -> Float
digitval a = read a :: Float

--Solution that accepts integers only
digitval' :: String -> Integer
digitval' a = read a :: Integer