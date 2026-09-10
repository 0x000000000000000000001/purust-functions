# purescript-functions

[![Latest release](http://img.shields.io/github/release/purescript/purescript-functions.svg)](https://github.com/purescript/purescript-functions/releases)
[![Build status](https://github.com/purescript/purescript-functions/workflows/CI/badge.svg?branch=master)](https://github.com/purescript/purescript-functions/actions?query=workflow%3ACI+branch%3Amaster)
[![Pursuit](https://pursuit.purescript.org/packages/purescript-functions/badge)](https://pursuit.purescript.org/packages/purescript-functions)

Function combinators and types for uncurried multi-argument functions.

## Installation

```
spago install functions
```

## Documentation

### Rust tests

Run `bin/test -c` to rebuild the sibling `purust` compiler, clear this package's
caches and compile fresh TAST and Rust before running the tests. `bin/test`
skips the compiler rebuild. Both builds use the compiler's local Spago
dependency; the package selects the sibling TAST-enabled PureScript fork,
with `PURS=/path/to/purs` available as an override.

`Test.GoCoverage` keeps all 11 tests from `gopurs-functions`, with their
original bodies and assertions. The additional tests cover `Fn0` through
`Fn10`: captured values, argument order, repeated calls, direct invocation
from Rust, and first-class `mkFn`/`runFn` adapters passed through an opaque
FFI boundary. They also check callbacks returning records and functions.
This exercises both the optimizer's intrinsics and the Rust FFI fallback.

### API

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-functions).
