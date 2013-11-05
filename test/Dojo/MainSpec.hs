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

    it "should be 5 when first frames are (1,2) and (1,1) rest is (0,0)" $ do
      (calculateScore $ (1, 2) : (1,1) : (replicate 8 (0, 0))) `shouldBe` 5

