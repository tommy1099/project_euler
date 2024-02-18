--gives a list with elements of multiples of 5 or 3
sol :: [Int] -> [Int]
sol xs = [x | x <- xs, x `mod` 3 == 0 || x `mod` 5 == 0]
main :: IO()
--sum of the list
main = print (sum (sol [1..999]))