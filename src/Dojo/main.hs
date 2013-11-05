module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (fstTuple:rest) 
	| firstScore == 10 = sumOfRest + (nextTry rest)
	| otherwise = sumOfRest
	where
		sumOfRest = firstScore + (calculateScore rest)
		firstScore = frameScore fstTuple
		nextTry = fst . head

frameScore :: (Int,Int) -> Int
frameScore (a,b) = a + b