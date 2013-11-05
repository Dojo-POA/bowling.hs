module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (fstTuple:rest) 
	| firstScore == 10 = firstScore + (fst $ head rest) + (calculateScore rest)
	| otherwise = firstScore + (calculateScore rest)
	where firstScore = frameScore fstTuple  

frameScore :: (Int,Int) -> Int
frameScore (a,b) = a + b