-- Example from Introduction to Functional Programming
--2.1.5

-- This solution allows for selection of margin of error
improve :: Fractional a => a -> a -> a
improve x y = (y + x / y) / 2

satis :: (Fractional a, Ord a) => a -> a -> a -> Bool
satis x y z = abs(y ^ 2 - x) <= z

until' :: (t -> t -> Bool) -> (t -> t) -> t -> t -> t
until' p f x y
 | p x y = x
 | otherwise = until' p f (f x) y
 
sqrt' :: (Fractional a, Ord a) => a -> a -> a
sqrt' x y = until' (satis x) (improve x) x y

--This one sets margin of error at 0.0001
improve' :: Fractional a => a -> a -> a
improve' x y = (y + x / y) / 2

satis' :: (Fractional a, Ord a) => a -> a -> Bool
satis' x y = abs(y ^ 2 - x) < 0.0001

until'' :: (t -> Bool) -> (t -> t) -> t -> t
until'' p f x
 | p x = x
 | otherwise = until'' p f (f x)
 
sqrt'' :: (Ord a, Fractional a) => a -> a
sqrt'' x = until'' (satis' x) (improve' x) x

--This solution uses local functions
 
sqrt''' x = until'' satis'' improve'' x
          where satis'' y = abs(y ^ 2 - x) < 0.01
                improve'' y = (y + x / y) / 2