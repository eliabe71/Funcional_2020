neglist xs = 
	sum [1| x<-xs, x<0]
main = do
    inputdata <- getContents
    print $ neglist $ map (read :: String->Int) (lines inputdata)
