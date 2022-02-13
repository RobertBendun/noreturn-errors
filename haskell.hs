{-# LANGUAGE CPP #-}

import System.Exit
import Text.Printf

reportErrorImpl :: String -> Int -> String -> IO ()
reportErrorImpl file line msg = do
  printf "%s:%d: error: %s\n" file line msg
  exitFailure

#define reportError (reportErrorImpl __FILE__ (__LINE__ :: Int))

main :: IO ()
main = reportError "main was not implemented yet"
