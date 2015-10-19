ans = [5,4,3,2,1]

qsort1 [] = []
qsort1 (x:xs) = qsort1 larger ++ [x] ++ qsort1 smaller
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]
ans1 = qsort1 [1,3,4,5,2]
-- Y
--

qsort2 [] = []
qsort2 (x:xs) = reverse (qsort2 smaller ++ [x] ++ qsort2 larger)
  where smaller = [a | a <- xs, a<=x]
        larger = [b | b <-xs, b>x]
ans2 = qsort2 [1,3,4,5,2]
-- N
-- ans2 = [2,3,5,4,1]

qsort3 [] = []
qsort3 xs = qsort3 larger ++ qsort3 smaller ++[x]
  where x = minimum xs
        smaller = [a | a <- xs, a<=x]
        larger = [b | b <- xs, b >x]
ans3 = qsort3 [1,3,4,5,2]
-- N
-- inf loop

qsort4 [] = []
qsort4 (x:xs)
  = reverse (qsort4 smaller) ++ [x] ++ reverse (qsort4 larger)
  where smaller = [a | a <- xs, a<=x]
        larger = [b | b <- xs, b>x]
ans4 = qsort4 [1,3,4,5,2]
-- N
-- [1,4,5,3,2]

qsort5 [] = []
qsort5 (x:xs) = qsort5 larger ++ [x] ++ qsort5 smaller
  where larger = [a | a <- xs, a > x || a==x]
        smaller = [b | b <- xs, b<x]
ans5 = qsort5 [1,3,4,5,2]
-- Y

qsort6 [] = []
qsort6 (x:xs) = qsort6 larger ++ [x] ++ qsort6 smaller
  where smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b > x]
ans6 = qsort6 [1,3,4,5,2]
-- N

qsort7 [] = []
qsort7 (x:xs) = reverse (reverse (qsort7 smaller) ++ [x] ++ reverse (qsort7 larger))
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]
ans7 = qsort7 [1,3,4,5,2]
-- Y

qsort8 [] = []
qsort8 xs = x : qsort8 larger ++ qsort8 smaller
  where x = maximum xs
        smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b >= x]
ans8 = qsort8 [1,3,4,5,2]
-- N
-- ans8 = [5..]
