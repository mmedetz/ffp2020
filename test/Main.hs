module Main where

import Test.Hspec

main :: IO ()
main = hspec $
  describe "basic" $ do
    it "trivial true is true" $
      True `shouldBe` True 
    it "trivial true is not false" $
      False `shouldNotBe` True 
    it "longer example" $ do 
      -- Multiple definitions in a test require a `do`.
      let x = 3
      x + 10 `shouldBe` 13

