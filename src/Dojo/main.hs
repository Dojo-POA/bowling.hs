module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore [] = 0

calculateScore (frame:rest) 
	| isStrike = scoreRest + nextScore rest
	| isSpare = scoreRest + nextTry
	| otherwise = scoreRest
	where
		scoreRest = frameScore + (calculateScore rest)
		frameScore = score frame
		nextTry = fst $ head rest
		isStrike = fst frame == 10
		isSpare = frameScore == 10

nextScore :: [(Int, Int)] -> Int
nextScore (frame:rest) 
	| isStrike = frameScore + nextTry
	| otherwise = score frame
	where
		isStrike = fst frame == 10
		nextTry = fst $ head rest
		frameScore = score frame
		
	

score :: (Int,Int) -> Int
score (a,b) = a + b
