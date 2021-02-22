##############################
##                          ##
##  pretest-posttest start  ##
##                          ##
##############################
$flag = 1

while $flag < 1 do #PRETEST (this loop is not entered because the value 
                   #of the flag is '1' which is not less than 1.)
  puts "In while loop"
end

begin
   puts("In posttest while loop" ) 
end while $flag < 1 #POSSTTEST (this loop is entered ONLY ONCE because the value 
                    #of the flag is checked after the statements in loop are executed.)

until $flag > 1  do #PRETEST (this loop is entered because the value 
                    #of the flag is '1' which is not less than 1 THIS LOOP ITERATES AS LONG AS 
					#THE BOOLEAN EXPRESSION IS FALSE.)
   puts("In until loop" )
   $flag +=1;
end

$flag = 1 #We made sure that the value of $flag is 1 
		  #because the until loop is entered

begin 
   puts("In posttest until loop" )
   $flag +=1;
end until $flag > 1 #POSSTTEST (this loop is entered ONLY ONCE because the value 
                    #of the flag is incremented in the loop and the value is checked after the loop statements 
					#THIS LOOP ITERATES AS LONG AS THE BOOLEAN EXPRESSION IS FALSE.)
					
##############################
##                          ##
##  pretest-posttest end    ##
##                          ##
##############################

####################################################
##                                                ##
##  user-located loop control mechanisms start    ##
##                                                ##
####################################################
$i = 0
while $i < 3 do
  $j = 0
  if $i == 2 then
    break  #If the value of i, is equal to '2', 'break' statement terminates 
           #the outer loop. 
  end
  while $j < 3 do
    if $j == 1 then
      $j = $j + 1
      next #If the value of j varible, is equal to '1', 'next' statement skips 
           #to the beginning of the inner loop.  
    end
    puts "i: #{$i} j: #{$j}"
    $j = $j + 1
  end
  $i = $i + 1
end

$control = false
$count = 0
while $count < 5 do
  puts "count: #{$count}"
  if $count == 1 then
    if !$control then
			$control = true
		  redo #If the value of count is 1 and the boolean variable control is false, 
		       #the redo statement is executed, which repeats the current iteration.
    end
  end 
  $count = $count + 1
end 
####################################################
##                                                ##
##  user-located loop control mechanisms end      ##
##                                                ##
#################################################### 