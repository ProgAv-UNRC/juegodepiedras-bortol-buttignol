module Tests where

import Piedras
import Test.Tasty (defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, assertFailure, assertString ,testCase)


main = defaultMain unitTests

unitTests = testGroup "Unit tests" [testComenzarJuego0,testComenzarJuego1]

testComenzarJuego0 =
  testCase (assertEqual "for (comenzarJuego 0)" (error) (Piedras.comenzarJuego 0))

testComenzarJuego1 =
  testCase (assertEqual "for (comenzarJuego 1)" (H,1)  (Piedras.comenzarJuego 1))