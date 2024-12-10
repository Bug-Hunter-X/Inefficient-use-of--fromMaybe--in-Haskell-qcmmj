```haskell
-- More efficient handling of Maybe without fromMaybe
myEfficientFunction :: Maybe Int -> Int
myEfficientFunction x =
  case x of
    Just val -> val
    Nothing -> 0

main :: IO ()
main = do
  let result = myEfficientFunction Nothing
  print result -- Output: 0
  let result2 = myEfficientFunction (Just 5)
  print result2 -- Output: 5
  let result3 = myEfficientFunction (Just (5 + 5))
  print result3 -- Output: 10
```