l = last [1,2,3]
-- 3

last_1 xs = drop (length xs -1)xs
-- N
-- return: [3]

last_2 xs = head (drop (length xs - 1)xs)
-- Y

last_3 xs = tail (reverse xs)
-- N
-- return: [2,1]

last_4 xs = reverse (head xs)
-- N
-- return: error, head xs returns not list

last_5 xs = xs !! (length xs -1)
-- Y

last_6 xs = head (drop (length xs) xs)
-- N
-- return: empty list

last_7 xs = head (reverse xs)
-- Y

last_8 xs = reverse xs !! (length xs - 1)
-- N
-- return: 1
