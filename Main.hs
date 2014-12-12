module Main where

import qualified Data.HashTable.IO as H
import qualified Data.HashTable.ST.Basic as B
type BasicHashTable k v = H.IOHashTable (B.HashTable)  k v

foo :: IO (BasicHashTable Int Int)
foo = do
    ht <- H.new
    H.insert ht 1 1
    return ht

main = do
  hash <- foo
  output <- H.lookup hash 1
  print output
