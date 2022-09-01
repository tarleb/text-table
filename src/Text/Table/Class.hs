{-# LANGUAGE TypeFamilies               #-}
{- |
Module      : Text.Table.Class
Copyright   : © 2022 RStudio, PBC
License     : MIT
Maintainer  : Albert Krewinkel <albert@zeitkraut.de>

Typeclass for textual tables.
-}
module Text.Table.Class
  ( Table (..)
  , Cell (..)
  , RowSpan (..)
  , ColSpan (..)
  ) where

import Text.Table.Cell

class Table tbl where
  data Content tbl :: *
  data Row tbl :: *
  allCells     :: tbl -> [Cell (Content tbl)]
  allRows      :: tbl -> [Row tbl]
  headRows     :: tbl -> [Row tbl]
