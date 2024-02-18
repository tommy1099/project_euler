--fibo
fibo :: Int -> Int
fibo 0 = 0
fibo 1 = 1
fibo x = fibo (x - 1) + fibo (x - 2)
--a fibo list under value 4mill with map and takeWhile 
fiboList :: (Ord a1, Num a1, Num a2, Enum a2) => (a2 -> a1) -> [a1]
fiboList fibo' = takeWhile (<= 4000000) (map fibo' [1..])
--sum of the even elements on the list
sol :: (Integral a) => [a] -> a
sol xs = sum [x | x <- xs, even x]

main :: IO()
main = print (sol (fiboList fibo))