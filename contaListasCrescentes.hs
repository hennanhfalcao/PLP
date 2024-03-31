contaSublistasCrescentes::[Int] -> Int
contaSublistasCrescentes xs = aux xs 0 0
    where 
        aux [] _ count = count
        aux [_] _ count = count
        aux (x:y:xs) prev count
            | x < y && (null xs || head xs <= y) = aux (y:xs) y (count + 1)
            | otherwise = aux (y:xs) y count

main :: IO ()
main = do
    entrada <- getLine
    let lista = map read $ words entrada :: [Int]
    print $ contaSublistasCrescentes lista