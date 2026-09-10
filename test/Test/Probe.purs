module Test.Probe where

import Data.Function.Uncurried (Fn0, Fn1, Fn2, Fn3, Fn4, Fn5, Fn6, Fn7, Fn8, Fn9, Fn10)

foreign import opaque :: forall a. a -> a
foreign import invokeFn0 :: forall r. Fn0 r -> r
foreign import invokeFn1 :: forall r. Fn1 Int r -> Int -> r
foreign import invokeFn2 :: forall r. Fn2 Int Int r -> Int -> Int -> r
foreign import invokeFn3 :: forall r. Fn3 Int Int Int r -> Int -> Int -> Int -> r
foreign import invokeFn4 :: forall r. Fn4 Int Int Int Int r -> Int -> Int -> Int -> Int -> r
foreign import invokeFn5 :: forall r. Fn5 Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> r
foreign import invokeFn6 :: forall r. Fn6 Int Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> Int -> r
foreign import invokeFn7 :: forall r. Fn7 Int Int Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> r
foreign import invokeFn8 :: forall r. Fn8 Int Int Int Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> r
foreign import invokeFn9 :: forall r. Fn9 Int Int Int Int Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> r
foreign import invokeFn10 :: forall r. Fn10 Int Int Int Int Int Int Int Int Int Int r -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> r
