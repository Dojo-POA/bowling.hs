module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (fstTuple:rest) =
	(frameScore fstTuple) + (calculateScore rest)

frameScore :: (Int,Int) -> Int
frameScore (a,b) = a + b