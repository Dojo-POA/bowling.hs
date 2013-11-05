module Dojo.Main where


calculateScore :: [(Int, Int)] -> Int
calculateScore frames = 
	let firstTuple:_ = frames in fst firstTuple