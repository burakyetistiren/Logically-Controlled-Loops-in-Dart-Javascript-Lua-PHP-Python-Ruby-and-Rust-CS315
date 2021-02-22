fn main() {
//////////////////////////////
//                          //
//  pretest-posttest start  //
//                          //
//////////////////////////////
  let flag = 1;
  while flag < 1 //PRETEST (this loop is not entered because the value 
                 //of the flag is '1' which is not less than 1.)
  {
    println!("In while loop");
  }

  loop{ //simulating do-while (posttest) (this loop is entered ONLY ONCE because 
        //the value of the flag is checked after the statements in loop are executed.)
    println!("In SIMULATED posttest loop");
    if flag <= 1 {break;}
  }
  
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
  let mut i = 0;
  while i < 3 
  {
    let mut j = 0;
    if i == 2 
    {
      break; //If the value of i, is equal to '2', 'break' statement terminates 
             //the outer loop. 
    }
    while j < 3
    {
      if j == 1 
      {
        j = j + 1;
        continue; //If the value of j varible, is equal to '1', 'continue' statement skips 
                  //to the beginning of the inner loop.  
      }
      println!("i: {} j: {}", i, j);
      j = j + 1;
    } 
    i = i + 1;
  }
}
//////////////////////////////////////////////////
//                                              //
//  user-located loop control mechanisms end    //
//                                              //
////////////////////////////////////////////////// 