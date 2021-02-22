<?php 
	//////////////////////////////
	//                          //
	//  pretest-posttest start  //
	//                          //
	//////////////////////////////
    $flag = 1;
	
    while( $flag < 1) //PRETEST (this loop is not entered because the value 
                      //of the flag is '1' which is not less than 1.)
    {
      echo "In while loop <br>";   
    }

    for(; $flag < 1;) //PRETEST (this loop is not entered because the value 
                      //of the flag is '1' which is not less than 1.)
      echo "In for loop <br>";   

    do
    {
      echo "In do-while loop <br>"; 
    }       
    while($flag < 1); //POSSTTEST (this loop is entered ONLY ONCE because the value 
                      //of the flag is checked after the statements in loop are executed.)

    //////////////////////////////
	//                          //
	//  pretest-posttest end    //
	//                          //
	//////////////////////////////
	
	//////////////////////////////////////////////////
	//                                              //
	//  user-located loop control mechanisms start  //
	//                                              //
	//////////////////////////////////////////////////
	for($i = 0; $i < 3; $i++) 
    {
      for($j = 0; $j < 3; $j++)
      {
          if( $j == 1)
          {
            continue 1; //If the value of j varible, is equal to '1', 'continue' statement skips 
                        //to the beginning of the inner loop, the '1' after the continue statement means 
						//that only one layer is skipped. 
          }

          if( $i == 2)
          {
            break 2; //If the value of i, is equal to '2', 'break' statement terminates 
                     //the outer loop, the '2' after the break statement means 
					 //that two layers are terminated. 
          }
		echo "i :  $i j: $j <br>";
      } 
    }

    for($count = 0; $count < 5; $count++)
    { 
        if($count == 1)
        {
          goto skip;
        }
        if($count == 4)
        {
          goto terminate;
        }   
        echo "count: $count <br>";
        skip: //label to skip to the next iteration
    }
    terminate: //label to indicate the end of the loop tp terminate
	
	//////////////////////////////////////////////////
	//                                              //
	//  user-located loop control mechanisms end    //
	//                                              //
	////////////////////////////////////////////////// 
?>