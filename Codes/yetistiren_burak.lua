------------------------------
--                          --
--  pretest-posttest start  --
--                          --
------------------------------
flag = 1;

while(flag < 1) --PRETEST (this loop is not entered because the value 
                --of the flag is '1' which is not less than 1.)
do 
    print("In while loop"); 
end  

repeat
  print("In repeat-until loop") 
  flag = flag + 1
until( flag > 1 ) --POSSTTEST (this loop is entered ONLY ONCE because the value 
                  --of the flag is checked after the statements in loop are executed, and in the 
				  --loop the flag is incremented because this loop continues to execute while
				  --the boolean expression if FALSE.)

------------------------------
--                          --
--  pretest-posttest end    --
--                          --
------------------------------

----------------------------------------------------
--                                                --
--  user-located loop control mechanisms start    --
--                                                --
----------------------------------------------------
i = 0;
while (i < 3)
do
    j = 0
    if i == 2
	then
		break --If the value of i, is equal to '2', 'break' statement terminates the loop
	end
	while(j < 3)
	do
		if j == 1 then 
			goto continue 
		end	
		print("i : ", i, " j: ", j);
		::continue:: --label to skip to the next iteration
		j = j + 1
	end
	i = i + 1
end
----------------------------------------------------
--                                                --
--  user-located loop control mechanisms end      --
--                                                --
----------------------------------------------------