module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore (fstTuple:sndTuple:_) = 
	(frameScore fstTuple) + (frameScore sndTuple) 

frameScore :: (Int,Int) -> Int
frameScore (a,b) = a + b