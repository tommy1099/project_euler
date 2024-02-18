sol :: [Int] -> [Int]
sol xs = [x | x <- xs, x `mod` 3 == 0 || x `mod` 5 == 0]
main :: IO()
main = print (sum (sol [1..999]))