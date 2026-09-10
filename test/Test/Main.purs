module Test.Main where

import Prelude

import Data.Function.Uncurried (mkFn0, runFn0, mkFn1, runFn1, mkFn2, runFn2, mkFn3, runFn3, mkFn4, runFn4, mkFn5, runFn5, mkFn6, runFn6, mkFn7, runFn7, mkFn8, runFn8, mkFn9, runFn9, mkFn10, runFn10)
import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assertEqual)
import Test.GoCoverage as GoCoverage
import Test.Probe (opaque, invokeFn0, invokeFn1, invokeFn2, invokeFn3, invokeFn4, invokeFn5, invokeFn6, invokeFn7, invokeFn8, invokeFn9, invokeFn10)

main :: Effect Unit
main = do
  GoCoverage.main
  let prefix = opaque "capture:"
  let
    intrinsic0 = opaque (mkFn0 (\_ -> prefix))
    foreign0 = opaque mkFn0 (\_ -> prefix)
  assertEqual { actual: runFn0 intrinsic0 , expected: "capture:" }
  assertEqual { actual: invokeFn0 intrinsic0 , expected: "capture:" }
  assertEqual { actual: opaque runFn0 foreign0 , expected: "capture:" }
  assertEqual { actual: opaque runFn0 foreign0 , expected: "capture:" }
  log "[OK] Fn0 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic1 = opaque (mkFn1 (\a -> prefix <> show a <> ":"))
    foreign1 = opaque mkFn1 (\a -> prefix <> show a <> ":")
  assertEqual { actual: runFn1 intrinsic1 1, expected: "capture:1:" }
  assertEqual { actual: invokeFn1 intrinsic1 1, expected: "capture:1:" }
  assertEqual { actual: opaque runFn1 foreign1 1, expected: "capture:1:" }
  assertEqual { actual: opaque runFn1 foreign1 1, expected: "capture:1:" }
  log "[OK] Fn1 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic2 = opaque (mkFn2 (\a b -> prefix <> show a <> ":" <> show b <> ":"))
    foreign2 = opaque mkFn2 (\a b -> prefix <> show a <> ":" <> show b <> ":")
  assertEqual { actual: runFn2 intrinsic2 1 2, expected: "capture:1:2:" }
  assertEqual { actual: invokeFn2 intrinsic2 2 1, expected: "capture:2:1:" }
  assertEqual { actual: opaque runFn2 foreign2 1 2, expected: "capture:1:2:" }
  assertEqual { actual: opaque runFn2 foreign2 2 1, expected: "capture:2:1:" }
  log "[OK] Fn2 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic3 = opaque (mkFn3 (\a b c -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":"))
    foreign3 = opaque mkFn3 (\a b c -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":")
  assertEqual { actual: runFn3 intrinsic3 1 2 3, expected: "capture:1:2:3:" }
  assertEqual { actual: invokeFn3 intrinsic3 3 2 1, expected: "capture:3:2:1:" }
  assertEqual { actual: opaque runFn3 foreign3 1 2 3, expected: "capture:1:2:3:" }
  assertEqual { actual: opaque runFn3 foreign3 3 2 1, expected: "capture:3:2:1:" }
  log "[OK] Fn3 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic4 = opaque (mkFn4 (\a b c d -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":"))
    foreign4 = opaque mkFn4 (\a b c d -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":")
  assertEqual { actual: runFn4 intrinsic4 1 2 3 4, expected: "capture:1:2:3:4:" }
  assertEqual { actual: invokeFn4 intrinsic4 4 3 2 1, expected: "capture:4:3:2:1:" }
  assertEqual { actual: opaque runFn4 foreign4 1 2 3 4, expected: "capture:1:2:3:4:" }
  assertEqual { actual: opaque runFn4 foreign4 4 3 2 1, expected: "capture:4:3:2:1:" }
  log "[OK] Fn4 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic5 = opaque (mkFn5 (\a b c d e -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":"))
    foreign5 = opaque mkFn5 (\a b c d e -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":")
  assertEqual { actual: runFn5 intrinsic5 1 2 3 4 5, expected: "capture:1:2:3:4:5:" }
  assertEqual { actual: invokeFn5 intrinsic5 5 4 3 2 1, expected: "capture:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn5 foreign5 1 2 3 4 5, expected: "capture:1:2:3:4:5:" }
  assertEqual { actual: opaque runFn5 foreign5 5 4 3 2 1, expected: "capture:5:4:3:2:1:" }
  log "[OK] Fn5 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic6 = opaque (mkFn6 (\a b c d e f -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":"))
    foreign6 = opaque mkFn6 (\a b c d e f -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":")
  assertEqual { actual: runFn6 intrinsic6 1 2 3 4 5 6, expected: "capture:1:2:3:4:5:6:" }
  assertEqual { actual: invokeFn6 intrinsic6 6 5 4 3 2 1, expected: "capture:6:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn6 foreign6 1 2 3 4 5 6, expected: "capture:1:2:3:4:5:6:" }
  assertEqual { actual: opaque runFn6 foreign6 6 5 4 3 2 1, expected: "capture:6:5:4:3:2:1:" }
  log "[OK] Fn6 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic7 = opaque (mkFn7 (\a b c d e f g -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":"))
    foreign7 = opaque mkFn7 (\a b c d e f g -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":")
  assertEqual { actual: runFn7 intrinsic7 1 2 3 4 5 6 7, expected: "capture:1:2:3:4:5:6:7:" }
  assertEqual { actual: invokeFn7 intrinsic7 7 6 5 4 3 2 1, expected: "capture:7:6:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn7 foreign7 1 2 3 4 5 6 7, expected: "capture:1:2:3:4:5:6:7:" }
  assertEqual { actual: opaque runFn7 foreign7 7 6 5 4 3 2 1, expected: "capture:7:6:5:4:3:2:1:" }
  log "[OK] Fn7 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic8 = opaque (mkFn8 (\a b c d e f g h -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":"))
    foreign8 = opaque mkFn8 (\a b c d e f g h -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":")
  assertEqual { actual: runFn8 intrinsic8 1 2 3 4 5 6 7 8, expected: "capture:1:2:3:4:5:6:7:8:" }
  assertEqual { actual: invokeFn8 intrinsic8 8 7 6 5 4 3 2 1, expected: "capture:8:7:6:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn8 foreign8 1 2 3 4 5 6 7 8, expected: "capture:1:2:3:4:5:6:7:8:" }
  assertEqual { actual: opaque runFn8 foreign8 8 7 6 5 4 3 2 1, expected: "capture:8:7:6:5:4:3:2:1:" }
  log "[OK] Fn8 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic9 = opaque (mkFn9 (\a b c d e f g h i -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":" <> show i <> ":"))
    foreign9 = opaque mkFn9 (\a b c d e f g h i -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":" <> show i <> ":")
  assertEqual { actual: runFn9 intrinsic9 1 2 3 4 5 6 7 8 9, expected: "capture:1:2:3:4:5:6:7:8:9:" }
  assertEqual { actual: invokeFn9 intrinsic9 9 8 7 6 5 4 3 2 1, expected: "capture:9:8:7:6:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn9 foreign9 1 2 3 4 5 6 7 8 9, expected: "capture:1:2:3:4:5:6:7:8:9:" }
  assertEqual { actual: opaque runFn9 foreign9 9 8 7 6 5 4 3 2 1, expected: "capture:9:8:7:6:5:4:3:2:1:" }
  log "[OK] Fn9 captures, argument order, native invocation and first-class adapters"
  let
    intrinsic10 = opaque (mkFn10 (\a b c d e f g h i j -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":" <> show i <> ":" <> show j <> ":"))
    foreign10 = opaque mkFn10 (\a b c d e f g h i j -> prefix <> show a <> ":" <> show b <> ":" <> show c <> ":" <> show d <> ":" <> show e <> ":" <> show f <> ":" <> show g <> ":" <> show h <> ":" <> show i <> ":" <> show j <> ":")
  assertEqual { actual: runFn10 intrinsic10 1 2 3 4 5 6 7 8 9 10, expected: "capture:1:2:3:4:5:6:7:8:9:10:" }
  assertEqual { actual: invokeFn10 intrinsic10 10 9 8 7 6 5 4 3 2 1, expected: "capture:10:9:8:7:6:5:4:3:2:1:" }
  assertEqual { actual: opaque runFn10 foreign10 1 2 3 4 5 6 7 8 9 10, expected: "capture:1:2:3:4:5:6:7:8:9:10:" }
  assertEqual { actual: opaque runFn10 foreign10 10 9 8 7 6 5 4 3 2 1, expected: "capture:10:9:8:7:6:5:4:3:2:1:" }
  log "[OK] Fn10 captures, argument order, native invocation and first-class adapters"
  let
    records = opaque (mkFn2 (\label valid -> { label: prefix <> label, valid }))
    record = runFn2 records "record" true
    functions = opaque (mkFn2 (\a b -> \n -> a * 100 + b * 10 + n))
    function = runFn2 functions 1 2
  assertEqual { actual: record.label, expected: "capture:record" }
  assertEqual { actual: record.valid, expected: true }
  assertEqual { actual: function 3, expected: 123 }
  assertEqual { actual: function 4, expected: 124 }
  log "[OK] record and function return values"
  log "Functions tests passed"
