somaImpares xs = sum [ x <- xs, odd x] 
main = do 
	inputdata <- getContents
    putStrLn $ show $ somaImpares $ map (read :: String -> Int) $ lines inputdata
