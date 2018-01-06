-- Exercise from Introduction to Functional Programming
--2.4.1

age :: (RealFrac a, Integral b) => (a, a, a) -> (a, a, a) -> b
age (d,m,y) (db,mb,yb) = floor ((d - db + 29.53 * (m - mb) + 365.25 * (y - yb)) / 365.25)