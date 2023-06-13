module Main where

import Piedras
import Test.Tasty (defaultMain, testGroup, TestTree)
import Test.Tasty.HUnit (assertEqual, assertFailure, assertString, testCase)


main = defaultMain tests

tests = testGroup "Unit Tests" [test1, test2 , test2]

test1 = testCase "test3" $ assertEqual "Cambio de Jugador" H $ (Piedras.otroJugador C)
test2 = testCase "test3" $ assertEqual "Cambio de Jugador" C $ (Piedras.otroJugador H)
test3 = testCase "test2" $ assertEqual "Juegos Ganadores de 10" [2,7,9] $ (Piedras.juegosGanadores 10)

  
