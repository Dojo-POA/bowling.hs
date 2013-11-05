module Dojo.MainSpec (spec) where

import Test.Hspec hiding (example)
import Test.QuickCheck
import Control.Exception (evaluate)
import Dojo.Main


spec :: Spec
spec = do
  describe "Calculate Bowling score" $ do
    it "should be zero when all frames are 0" $ do
      (calculateScore [(0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]) `shouldBe` 0

    it "should be 1 when first try of the first frame is one and the rest is 0" $ do
      (calculateScore [(1, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0), (0, 0)]) `shouldBe` 1


