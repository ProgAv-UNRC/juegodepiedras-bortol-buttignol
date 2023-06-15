module Main where

import Piedras
import Test.Tasty (defaultMain, testGroup, TestTree)
import Test.Tasty.HUnit (assertEqual, assertFailure, assertString, testCase)


main = defaultMain tests

tests = testGroup "Unit Tests" [testsOtroJugador, testsHacerJugada, testsMejorJugada, testsJuegosGanadores]

testsOtroJugador = testGroup "Tests otroJugador" [testOtroJugadorC,testOtroJugadorH]
testOtroJugadorC = testCase "otroJugador C" $ assertEqual "otroJugador C" H $ (Piedras.otroJugador C)
testOtroJugadorH = testCase "otroJugador H" $ assertEqual "otroJugador H" C $ (Piedras.otroJugador H)

testsHacerJugada = testGroup "Tests hacerJugada" [testHacerJugada3H2, testHacerJugada5H7, testHacerJugada5C7]
testHacerJugada3H2 = testCase "hacerJugada 2 (H,3)" $ assertEqual "hacerJugada 2 (H,3)" (C,1) $ (Piedras.hacerJugada 2 (H,3))
testHacerJugada5H7 = testCase "hacerJugada 2 (H,7)" $ assertEqual "hacerJugada 5 (H,7)" (C,2) $ (Piedras.hacerJugada 5 (H,7))
testHacerJugada5C7 = testCase "hacerJugada 5 (C,7)" $ assertEqual "hacerJugada 5 (C,7)" (H,2) $ (Piedras.hacerJugada 5 (C,7))

testsMejorJugada = testGroup "Tests mejorJug" [testMejorJugH12, testMejorJugH3, testMejorJugC12, testMejorJugC3]
testMejorJugH12 = testCase "mejorJug (H,12)" $ assertEqual "mejorJug (H,12)" 3 $ (Piedras.mejorJug (H,12))
testMejorJugH3 = testCase "mejorJug (H,3)" $ assertEqual "mejorJug (H,3)" 3 $ (Piedras.mejorJug (H,3))
testMejorJugC12 = testCase "mejorJug (C,12)" $ assertEqual "mejorJug (C,12)" 3 $ (Piedras.mejorJug (C,12))
testMejorJugC3 = testCase "mejorJug (C,3)" $ assertEqual "mejorJug (C,3)" 1 $ (Piedras.mejorJug (C,3))

testsJuegosGanadores = testGroup "Tests juegosGanadores" [testGanadores10, testGanadores9, testGanadores8, testGanadores7, testGanadores6]
testGanadores10 = testCase "juegosGanadores 10" $ assertEqual "juegosGanadores 10" [2,7,9] $ (Piedras.juegosGanadores 10)
testGanadores9 = testCase "juegosGanadores 9" $ assertEqual "juegosGanadores 9" [2,7,9] $ (Piedras.juegosGanadores 9)
testGanadores8 = testCase "juegosGanadores 8" $ assertEqual "juegosGanadores 8" [2,7] $ (Piedras.juegosGanadores 8)
testGanadores7 = testCase "juegosGanadores 7" $ assertEqual "juegosGanadores 7" [2,7] $ (Piedras.juegosGanadores 7)
testGanadores6 = testCase "juegosGanadores 6" $ assertEqual "juegosGanadores 6" [2] $ (Piedras.juegosGanadores 6)