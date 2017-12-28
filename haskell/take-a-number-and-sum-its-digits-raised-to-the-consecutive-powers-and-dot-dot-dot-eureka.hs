{-https://www.codewars.com/kata/take-a-number-and-sum-its-digits-raised-to-the-consecutive-powers-and-dot-dot-dot-eureka/train/haskell-}

module Codewars.G964.Sumdigpow where

sumDigPow :: Int -> Int -> [Int]
sumDigPow a b = filter (\x -> x == sumOfConsecutivePowers x) [a..b]

digits :: Integral x => x -> [x]
digits 0 = []
digits x = digits (x `div` 10) ++ [x `mod` 10]

sumOfConsecutivePowers :: Integral x => x -> x
sumOfConsecutivePowers x = sum . zipWith (^) (digits x) $ [1..]
