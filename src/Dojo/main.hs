module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (fstTuple:rest) 
	| firstFirst == 10 = sumOfRest + (frameScore $ head rest)
	| firstScore == 10 = sumOfRest + (nextTry rest)
	| otherwise = sumOfRest
	where
		sumOfRest = firstScore + (calculateScore rest)
		firstScore = frameScore fstTuple
		nextTry = fst . head
		firstFirst = fst fstTuple		

frameScore :: (Int,Int) -> Int
frameScore (a,b) = a + b