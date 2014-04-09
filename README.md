ECE281_Lab4
===========

##Lab4

#### ALU Simulation pictures

###### first 4 operations simulated

![alt text](https://raw.githubusercontent.com/JeremyGruszka/ECE_Lab4/master/simulationFirstHalf.PNG "First Half")

###### second 4 operations simulated

![alt text](https://raw.githubusercontent.com/JeremyGruszka/ECE_Lab4/master/simulationSecondHalf.PNG "Schematic")

#### ALU Sim analysis

In order to make sure that my program worked, I went through and made sure the result was correct for each of the 8 functions.  The top row of boxes is the function.  The second row of boxes is the Data input.  The third row of boxes is the Accumulator input.  The final row of boxes is the Result output.  Function "000" is AND.  The inputs were correctly anded together for that function.  Function "001" is NEG. The inputs were correctly put into 2's complement for that function. Function "010" is NOT.  The inputs were correctly notted for that function.  Function "011" is ROR.  The inputs were correctly rotated right one space for that function.  Function "100" is OR.  The inputs were correctly ored together for that function.  Function "101" is IN.  The input was correctly stored into the result for that function.  Function "110" is ADD.  The inputs were correctly added together for this function.  Function "111" is LD.  All inputs were correctly loaded into the result for this function.  After determining that my simulation was correct, it was determined that my program was correct.

#### ALU Sim debugging
The only real problem I had with the ALU sim portion of the lab was the ROR function.  I could not figure out how to rotate right for the life of me.  So I googled bit rotation and found out there was a built in rotate_right function in the program that I could use.  After that, my program was good.
