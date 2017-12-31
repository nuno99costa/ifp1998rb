-- Exercise from Introduction to Functional Programming
--2.1.6

improve :: Fractional a => a -> a -> a
improve x y = (y + x / y) / 2

satis :: (Fractional a, Ord a) => a -> a -> Bool
satis x y = abs(y ^ 2 - x) < 0.0001 * x

until' :: (t -> Bool) -> (t -> t) -> t -> t
until' p f x
 | p x = x
 | otherwise = until' p f (f x)
 
sqrt' :: (Ord a, Fractional a) => a -> a
sqrt' x = until' (satis x) (improve x) x

--

improve' :: Fractional a => a -> a -> a
improve' x y = (y + x / y) / 2

satis' :: (Fractional a, Ord a) => a -> a -> Bool
satis' x y = abs(y - improve x y) < 0.0001 * abs(y)

until'' :: (t -> Bool) -> (t -> t) -> t -> t
until'' p f x
 | p x = x
 | otherwise = until' p f (f x)
 
sqrt'' :: (Ord a, Fractional a) => a -> a
sqrt'' x = until'' (satis' x) (improve' x) x

--Missing: Reasons for why these tests are superior in practice