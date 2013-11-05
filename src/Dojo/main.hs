module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (frame:rest) 
	| isStrike = scoreRest + nextScore
	| isSpare = scoreRest + nextTry
	| otherwise = scoreRest
	where
		scoreRest = frameScore + (calculateScore rest)
		frameScore = score frame
		nextTry = fst $ head rest
		nextScore = score $ head rest
		isStrike = fst frame == 10
		isSpare = frameScore == 10

score :: (Int,Int) -> Int
score (a,b) = a + b