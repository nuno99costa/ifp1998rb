-- Exercise from Introduction to Functional Programming
--2.3.5

ljustify n x 
        | n >= m = x ++ replicate (n - m) ' '
        | otherwise = x
        where m = length x
        
rjustify n x 
        | n >= m = replicate (n - m) ' ' ++ x
        | otherwise = x
        where m = length x
        
cjustify n x 
        | n >= m = replicate hm ' ' ++ x ++ replicate hm ' '
        | otherwise = x
        where m = length x
              hm = fromIntegral (n - m) `div` 2