sol :: (Integral a) => a -> [a]
sol num = tail [x | x <- [1 .. num ^ 2], num `mod` x == 0, [y | y <- [1 .. x], x `mod` y == 0] == [1, x]]

-- primes a = [x | x <- [1 .. a], a `mod` x == 0, factors x == [1, x]]

main :: IO ()
main = print (sol 600851475143)