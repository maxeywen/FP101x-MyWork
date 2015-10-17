ans = init [1,2,3]
-- [1,2]

init_1 xs = tail (reverse xs)
--N
--returns [2,1]

init_2 xs = reverse (head (reverse xs))
--N
--error, head => int, can't reverse int

init_3 xs = reverse (tail xs)
--N
--[3,2]

init_4 xs = take (length xs) xs
--N
--[1,2,3]

init_5 xs = reverse (tail (reverse xs))
--Y
--

init_6 xs = take (length xs-1) (tail xs)
--N
--[2,3]

init_7 xs = drop (length xs-1) xs
--N
--[3]
