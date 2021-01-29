doubleMe x = x + x
doubleUs x y = x *2 + y *2

doubleSmall x = if x > 100 
              then x 
              else x * 3

--comprehensions 
--[x*2 | x < - [1...10]]
-- means x is drawn from 1..10 and for every element 
--in 1..10 bound to x, we get the element double 

--if we want the same result but grater than 12 
-- [x*2 | x <-[1..10], x*2 >= 12 ]

--more *filtering 
--we want to replace each odd number greater than 10 with bang and each odd number less than 10 with boom 
boomx xs = [if x < 10 then "boom" else "bang!" | x <- xs,odd x]


--remove all upper case
removeU st = [ c | c <- st, c `elem` ['A' .. 'Z'] ]