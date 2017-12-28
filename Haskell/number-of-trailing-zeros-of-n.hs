{-https://www.codewars.com/kata/number-of-trailing-zeros-of-n/train/haskell-}

module Zeros where

countDivisibleNumbers :: Int -> Int -> Int
countDivisibleNumbers max' divisor = max' `div` divisor

powersOf5 :: Int -> [Int]
powersOf5 n =  takeWhile (<n) $ map (5^) [1..]

zeros :: Int -> Int
zeros n = sum $  map (countDivisibleNumbers n) $ powersOf5 n
