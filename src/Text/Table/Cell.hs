{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE TypeFamilies               #-}
{- |
Module      : Text.Table.Cell
Copyright   : © 2022 RStudio, PBC
License     : MIT
Maintainer  : Albert Krewinkel <albert@zeitkraut.de>

Definitions for table cells.
-}
module Text.Table.Cell
  ( Cell (..)
  , RowSpan (..)
  , ColSpan (..)
  ) where

-- | A table cell, the smallest unit of a table.
data Cell a = Cell
  { cellContent :: a
  , cellRowSpan :: RowSpan
  , cellColSpan :: ColSpan
  }
  deriving stock (Eq, Ord, Read, Show)

-- | The number of rows spanned by a cell.
newtype RowSpan = RowSpan Int
  deriving stock (Eq, Ord)
  deriving newtype (Enum, Num, Read, Show)

-- | The number of columns spanned by a cell.
newtype ColSpan = ColSpan Int
  deriving stock (Eq, Ord)
  deriving newtype (Enum, Num, Read, Show)
