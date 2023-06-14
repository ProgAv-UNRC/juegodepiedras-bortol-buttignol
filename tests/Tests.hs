module Main where

import Piedras
import Test.Tasty (defaultMain, testGroup, TestTree)
import Test.Tasty.HUnit (assertEqual, assertFailure, assertString, testCase)


main = defaultMain tests

tests = testGroup "Unit Tests" [testOtroJugadorC,testOtroJugadoH,testGanadores10, testHacerJugada3H2,testHacerJugada5H7,testEvalEstadoC0,testEvalEstadoH0,testHacerJugada5C7,testEvalEstadoH9,testEvalEstadoC9,testMejorJugH12,testMejorJugH3,testMejorJugC12,testMejorJugC3]

testOtroJugadorC = testCase "test1" $ assertEqual "Cambio de Jugador" H $ (Piedras.otroJugador C)
testOtroJugadoH = testCase "test2" $ assertEqual "Cambio de Jugador" C $ (Piedras.otroJugador H)
testGanadores10 = testCase "test3" $ assertEqual "Juegos Ganadores de 10" [2,7,9] $ (Piedras.juegosGanadores 10)
testHacerJugada3H2 = testCase "test4" $ assertEqual "Hacer Jugada 2 (H,3)" (C,1) $ (Piedras.hacerJugada 2 (H,3))
testHacerJugada5H7 = testCase "test5" $ assertEqual "Hacer Jugada 5 (H,7)" (C,2) $ (Piedras.hacerJugada 5 (H,7))
testHacerJugada5C7 = testCase "test6" $ assertEqual "Hacer Jugada 5 (C,7)" (H,2) $ (Piedras.hacerJugada 5 (C,7))
testEvalEstadoC0 = testCase "test7" $ assertEqual "Evaluar estado C 0" CPerdio $ (Piedras.evalEstado (C,0))
testEvalEstadoH0 = testCase "test8" $ assertEqual "Evaluar estado H 0" CGano $ (Piedras.evalEstado (H,0))
testEvalEstadoH9 = testCase "test9" $ assertEqual "Evaluar estado H 9" CGano $ (Piedras.evalEstado (H,9))
testEvalEstadoC9 = testCase "test10" $ assertEqual "Evaluar estado C 9" CPerdio $ (Piedras.evalEstado (C,9))
testMejorJugH12 = testCase "test11" $ assertEqual "Evaluar mejoresJugadas H 12" 3 $ (Piedras.mejorJug (H,12))
testMejorJugH3 = testCase "test12" $ assertEqual "Evaluar mejoresJugadas H 3" 3 $ (Piedras.mejorJug (H,3))
testMejorJugC12 = testCase "test13" $ assertEqual "Evaluar mejoresJugadas C 12" 3 $ (Piedras.mejorJug (C,12))
testMejorJugC3 = testCase "test14" $ assertEqual "Evaluar mejoresJugadas C 3" 1 $ (Piedras.mejorJug (C,3))
