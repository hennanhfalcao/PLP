main:: IO ()
main = do 
    velocidades <- readLn :: IO [Int]
    let (x, y, z) = geraRelatorio velocidades
    putStrLn "=== Relatorio ==="
    putStrLn $ show x ++ " limite"
    putStrLn $ show y ++ " tolerancia"
    putStrLn $ show z ++ " multa"
    
geraRelatorio :: [Int] -> (Int, Int, Int)
geraRelatorio velocidades = (x, y, z)
    where
        x = length $ filter (<= 80) velocidades
        y = length $ filter (\v -> v > 80 && v <= 88) velocidades
        z = length $ filter (>88) velocidades