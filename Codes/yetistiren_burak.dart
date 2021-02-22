void main() {
  //////////////////////////////
  //                          //
  //  pretest-posttest start  //
  //                          //
  //////////////////////////////
  var flag = 1;

  while( flag < 1) //PRETEST (this loop is not entered because the value 
                   //of the flag is '1' which is not less than 1.)
  {
    print("In while loop");   
  }

  for(; flag < 1;) //PRETEST (this loop is not entered because the value 
                   //of the flag is '1' which is not less than 1.)
    print("In for loop");

  do
  {
    print("In do-while loop"); 
  }
  while(flag < 1); //POSSTTEST (this loop is entered ONLY ONCE because the value 
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
  outerloop: //label of the outer for loop
  for(var i = 0; i < 3; i++) 
  {
    innerloop: //label of the inner for loop
    for(var j = 0; j < 3; j++)
    {
      if( j == 1)
      {
        continue innerloop; //If the value of j varible, is equal to '1', 'continue' statement skips 
                            //to the beginning of the inner loop. 
      }

      if( i == 2)
      {
        break outerloop; //If the value of i, is equal to '2', 'break' statement terminates 
                         //the outer loop. 
      }
      print("i : $i j: $j");
    }
  }
  //////////////////////////////////////////////////
  //                                              //
  //  user-located loop control mechanisms end    //
  //                                              //
  //////////////////////////////////////////////////  
}