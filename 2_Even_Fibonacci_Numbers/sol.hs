-- --fibo
-- fibo :: Int -> Int
-- fibo 0 = 0
-- fibo 1 = 1
-- fibo x = fibo (x - 1) + fibo (x - 2)
-- --a fibo list under value 4mill with map and takeWhile 
-- fiboList :: (Ord a1, Num a1, Num a2, Enum a2) => (a2 -> a1) -> [a1]
-- fiboList fibo' = takeWhile (<= 4000000) (map fibo' [1..])
-- --sum of the even elements on the list
-- sol :: (Integral a) => [a] -> a
-- sol xs = sum [x | x <- xs, even x]

-- main :: IO()
-- main = print (sol (fiboList fibo))

-- Define an infinite list of Fibonacci numbers
fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Filter even Fibonacci numbers below a limit
evenFibsBelow :: Integer -> [Integer]
evenFibsBelow limit = filter even $ takeWhile (< limit) fibs

-- Sum of even Fibonacci numbers below a limit
sumEvenFibsBelow :: Integer -> Integer
sumEvenFibsBelow limit = sum $ evenFibsBelow limit

main :: IO ()
main = print fibs