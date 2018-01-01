-- Exercise from Introduction to Functional Programming
--2.3.1
import Data.Char

--Solution using Data.Char
nextlet :: Char -> Char
nextlet a
    | ord a >= 97 && ord a < 122 || ord a >= 65 && ord a < 90 = chr(ord a + 1)
    | ord a == 122 = 'a'
    | ord a == 90 = 'A'

--Solution using native Haskell functions
nextlet' :: Char -> Char
nextlet' a
    | fromEnum a >= 97 && fromEnum a < 122 || fromEnum a >= 65 && fromEnum a < 90 = toEnum(fromEnum a + 1)::Char
    | fromEnum a == 122 = 'a'
    | fromEnum a == 90 = 'A'