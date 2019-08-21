module Main where

    import Lib
    
    data Status = Work | Rest
    
    data Week = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday 
    
    jonny :: Week -> Status
    jonny x = case x of
       Saturday -> Rest
       Sunday -> Rest
       otherwise -> Work
    
    xxx :: Status -> String
    xxx s = case s of
       Work -> "Work"
       Rest -> "Rest"
    
    
    
    printlst :: [Int] -> [String]
    printlst [] = []
    printlst (head:tail) = show (head * 2) : printlst tail
    
    reverselist :: [Int] -> [Int]
    reverselist [] = []
    reverselist (head:tail) = reverselist tail ++ [head]
    
    reverselistadv :: [Int] -> [Int] -> [Int]
    reverselistadv acc [] = acc
    reverselistadv acc (head:tail) = reverselistadv (head : acc) tail
    rev :: [Int] -> [Int]
    rev lst = reverselistadv [] lst
    
    mysquare :: Int -> Int
    mysquare x = x * x
    
    main :: IO ()
    main = print(xxx . jonny $Sunday)
    -- main = print(mysquare 5)
    -- main = print . rev $[1, 2, 3, 4]
    