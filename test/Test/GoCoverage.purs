module Test.GoCoverage where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assert)
import Data.Function.Uncurried (Fn0, Fn1, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn8, Fn9, Fn10, mkFn0, mkFn1, mkFn2, mkFn3, mkFn4, mkFn5, mkFn6, mkFn7, mkFn8, mkFn9, mkFn10, runFn0, runFn1, runFn2, runFn3, runFn4, runFn5, runFn6, runFn7, runFn8, runFn9, runFn10)

myFn0 :: Fn0 Int
myFn0 = mkFn0 \_ -> 42

myFn1 :: Fn1 Int Int
myFn1 = mkFn1 \a -> a + 1

myFn2 :: Fn2 Int Int Int
myFn2 = mkFn2 \a b -> a + b

myFn3 :: Fn3 Int Int Int Int
myFn3 = mkFn3 \a b c -> a + b + c

myFn4 :: Fn4 Int Int Int Int Int
myFn4 = mkFn4 \a b c d -> a + b + c + d

myFn5 :: Fn5 Int Int Int Int Int Int
myFn5 = mkFn5 \a b c d e -> a + b + c + d + e

myFn6 :: Fn6 Int Int Int Int Int Int Int
myFn6 = mkFn6 \a b c d e f -> a + b + c + d + e + f

myFn7 :: Fn7 Int Int Int Int Int Int Int Int
myFn7 = mkFn7 \a b c d e f g -> a + b + c + d + e + f + g

myFn8 :: Fn8 Int Int Int Int Int Int Int Int Int
myFn8 = mkFn8 \a b c d e f g h -> a + b + c + d + e + f + g + h

myFn9 :: Fn9 Int Int Int Int Int Int Int Int Int Int
myFn9 = mkFn9 \a b c d e f g h i -> a + b + c + d + e + f + g + h + i

myFn10 :: Fn10 Int Int Int Int Int Int Int Int Int Int Int
myFn10 = mkFn10 \a b c d e f g h i j -> a + b + c + d + e + f + g + h + i + j

main :: Effect Unit
main = do
  log "Testing Fn0..."
  assert $ runFn0 myFn0 == 42
  
  log "Testing Fn1..."
  assert $ runFn1 myFn1 1 == 2
  
  log "Testing Fn2..."
  assert $ runFn2 myFn2 1 2 == 3
  
  log "Testing Fn3..."
  assert $ runFn3 myFn3 1 2 3 == 6
  
  log "Testing Fn4..."
  assert $ runFn4 myFn4 1 2 3 4 == 10
  
  log "Testing Fn5..."
  assert $ runFn5 myFn5 1 2 3 4 5 == 15
  
  log "Testing Fn6..."
  assert $ runFn6 myFn6 1 2 3 4 5 6 == 21
  
  log "Testing Fn7..."
  assert $ runFn7 myFn7 1 2 3 4 5 6 7 == 28
  
  log "Testing Fn8..."
  assert $ runFn8 myFn8 1 2 3 4 5 6 7 8 == 36
  
  log "Testing Fn9..."
  assert $ runFn9 myFn9 1 2 3 4 5 6 7 8 9 == 45
  
  log "Testing Fn10..."
  assert $ runFn10 myFn10 1 2 3 4 5 6 7 8 9 10 == 55

  log "All tests passed!"
