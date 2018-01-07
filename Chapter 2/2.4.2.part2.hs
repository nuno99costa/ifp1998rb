-- Exercise from Introduction to Functional Programming
--2.4.2.part2

split :: Integral a => a -> (a, a)
split x
    | x `mod` 10 <= 5 = (x `mod` 10 , x `div` 10)
    | x `mod` 10 > 5 = ((x `mod` 10) - 10 , (x `div` 10) + 1)