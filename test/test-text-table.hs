{-|
Module      : Main
Copyright   : © 2022 RStudio, PBC
License     : MIT
Maintainer  : Albert Krewinkel <tarleb@zeitkraut.de>

Tests for text tables.
-}
module Main (main) where

import Test.Tasty (TestTree, defaultMain, testGroup)

-- | Runs all tests.
main :: IO ()
main = defaultMain tests

-- | Tests for text tables.
tests :: TestTree
tests = testGroup "Table"
  [
  ]
