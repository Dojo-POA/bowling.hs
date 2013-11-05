module Dojo.MainSpec (spec) where

import Test.Hspec hiding (example)
import Test.QuickCheck
import Control.Exception (evaluate)
import Dojo.Main


spec :: Spec
spec = do
  describe "Calculate Bowling score" $ do
    it "should be zero when all frames are 0" $ do
      (calculateScore (replicate 10 (0, 0))) `shouldBe` 0

    it "should be 1 when first frame is (1,0) and rest is (0,0)" $ do
      (calculateScore $ (1, 0) : (replicate 9 (0, 0))) `shouldBe` 1

    it "should be 3 when first frame is (1,2) and rest is (0,0)" $ do
      (calculateScore $ (1, 2) : (replicate 9 (0, 0))) `shouldBe` 3

    it "should be 50 when all frames are (3,2)" $ do
      (calculateScore $ replicate 10 (3, 2)) `shouldBe` 50  

    it "should be 16 when first frame is spare, the second is (3,0) and rest is (0,0)" $ do
      (calculateScore $ (6,4) : (3,0) : (replicate 8 (0, 0))) `shouldBe` 16

    it "should be 32 when first and second frames spares, the third is (3,0) and rest is (0,0)" $ do
      (calculateScore $ (6,4) : (6,4) : (3,0) : (replicate 7 (0, 0))) `shouldBe` 32




