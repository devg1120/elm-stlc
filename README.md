# elm parser sample

## Math.elm

```
module Math exposing (..)

import Run exposing (run)


r = run "2+2"


r2 = run "2 * 4 "
r3 = run "if True && False then 1 else 2"


```

## elm repl

```
gusa1120@gsub:~/Elm/elm-stlc$ cd src/elm/
gusa1120@gsub:~/Elm/elm-stlc/src/elm$ 
gusa1120@gsub:~/Elm/elm-stlc/src/elm$ elm repl
---- Elm 0.19.1 ----------------------------------------------------------------
Say :help for help and :exit to exit! More at <https://elm-lang.org/0.19.1/repl>
--------------------------------------------------------------------------------
> import Math exposing (..)
> r2
"8 : Int" : String
> r3
"2 : Int" : String
> 

```








# Elm Simply Typed Lambda Calculus

This is a simple implementation of a little Simply Typed Lambda Calculus.
It is based of the wonderful (but unfortunately unfinished) book from Stephen Diehl : [Write You A Haskell](http://dev.stephendiehl.com/fun/).

## Build

```bash
$ npm install
```

```bash
$ npm run build
```

## Usage

Evaluate a simple expression right away.

```bash
$ npm run --silent stlc eval "(\x : Int . x) 42"
42 : Int
```

Or fire up the repl altogether and start playing with the language.

```bash
$ npm run --silent stlc repl
λ> (\x : Int . x) 42
42 : Int
λ> .exit
```

## Syntax

This is a light version of simply typed lambda calculus.
There are only 3 types : Int, Bool, Function (->)

Some basic operators are also implemented:

- `+`
- `-` (both prefix for negation and infix for substraction)
- `*`
- `&&`
- `||`
- `>`
- `<`
- `==`

And the `if ... then ... else ...` expressions.

## Example

Lambda for function application and its arguments:

```
(\f : Int -> Int . \x : Int . f x) (\n : Int . 10 * n) 5
```

This would be the `not` function:

```
(\b : Bool . if b then False else True)
```

Less than or equal:

```
(\n : Int . \m : Int . n < m || n == m)
```
