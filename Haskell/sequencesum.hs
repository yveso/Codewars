{-https://www.codewars.com/kata/sequencesum/train/haskell-}

module SequenceSum where

sumOfN :: Int -> [Int]
sumOfN n =
    let sig = if n < 0 then -1 else 1
    in map (\n -> sig * n * (n+1) `div` 2) [0..abs n]
