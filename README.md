# Experiment--03-Half-Subtractor-and-Full-subtractor...

## Implementation-of-Half-subtractor-and-Full-subtractor-circuit...

## AIM:

To design a half subtractor and full subtractor circuit and verify its truth table in Quartus using Verilog programming.

## Equipments Required:

Hardware – PCs,

Cyclone II , 

USB flasher.

Software – Quartus prime.

## Theory:

Subtractor circuits take two binary numbers as input and subtract one binary number input from the other binary number input. Similar to adders, it gives out two outputs, difference and borrow (carry-in the case of Adder). There are two types of subtractors.

## Half Subtractor Full Subtractor:

## Half Subtractor:

The half-subtractor is a combinational circuit which is used to perform subtraction of two bits. It has two inputs, X (minuend) and Y (subtrahend) and two outputs D (difference) and B (borrow). To perform x - y, we have to check the relative magnitudes of x and y. If x ;;, y, we have three possibilities: 0 - 0 = 0, 1 - 0 = 1, and 1 - I = 0. The result is called the difference bit. If x < y, we have 0 - I, and it is necessary to borrow a 1 from the next higher stage. The I borrowed from the next higher stage adds 2 to the minuend bit, just as in the decimal system a borrow adds 10 to a minuend digit. With the minuend equal to 2, the difference becomes 2 - I = 1. The half-subtractor needs two outputs. One output generates the difference and will be designated by the symbol D. The second output, designated B for borrow, generates the binary signal that informs the next stage that a I has been borrowed.

![half-subtractor9](https://user-images.githubusercontent.com/36288975/166112538-58c3bc7c-ee5d-4e6a-ac8d-8e8328efe27a.png)


Sum = X'Y+XY' = X ⊕ Y

Carry=X'Y

## Full Subtractor:

A full subtractor is a combinational circuit that performs subtraction involving three bits, namely minuend, subtrahend, and borrow-in . It accepts three inputs: minuend, subtrahend and a borrow bit and it produces two outputs: difference and borrow. 

![full-subtractor6](https://user-images.githubusercontent.com/36288975/166112541-24c68359-3de8-4674-ae22-8272ffc385ed.png)


Diff = A ⊕ B ⊕ Bin B = A'Bin + A'B + BBin


## Procedure:

1. Use module projname(input,output) to start the Verilog programmming.

2. Assign inputs and outputs using the word input and output respectively.

3. Use defined keywords like wire,assign and required logic gates to represent the boolean expression.

4. Use each output to represnt onre for differnce and the other for borrow.

5. End the verilog program using keyword endmodule.


## Program:

```c
Program to design a half subtractor and full subtractor circuit and verify its truth table in quartus using Verilog programming.
Developed by: Anto Richard. S
Register Number:  212221240005

HALF SUBTRACTOR:

module HalfSubtractor(a,b,diff,borr); 
input a,b;  
output diff,borr; 
assign diff = (a^b);  
assign borr = (~a&b); 
endmodule 

FULL SUBTRACTOR:

module FullSubtractor(a,b,c,diff,borr);
input a,b,c;
output diff,borr;
assign borr = (~a&(b^c)|(b&c));
assign diff = (a^b^c);
endmodule

```

## Output:

## Half Subtractor:

## Logic Symbol:

![out1](https://user-images.githubusercontent.com/93427534/233125358-814f9faa-e3b9-46cf-a69f-d66b5eebc190.png)

## Truthtable:

![out2](https://user-images.githubusercontent.com/93427534/233125378-ccd02f54-568f-44bc-8613-cbac03bab2ad.png)

##  RTL realization:

![out3](https://user-images.githubusercontent.com/93427534/233125389-32092965-d551-48c0-8c4f-db73f9bf7e16.png)

## Timing diagram :

![out4](https://user-images.githubusercontent.com/93427534/233125420-d9165696-1209-40f5-87ee-0e1144f4b79d.png)

## Full Subtractor:

## Logic Symbol:

![img1](https://user-images.githubusercontent.com/93427534/233125460-6dca49d0-a7b2-4c18-b47c-354f7777f7e5.png)

## Truthtable:

![img2](https://user-images.githubusercontent.com/93427534/233125479-edec9179-8e30-443c-9bfe-358a646896c2.png)

##  RTL realization:

![img3](https://user-images.githubusercontent.com/93427534/233125499-a8b8ca31-f19e-4702-b737-e0fbe14661e8.png)

## Timing diagram :

![img4](https://user-images.githubusercontent.com/93427534/233125509-11fda912-c52f-40f6-a455-bea0497be51f.png)

## Result:

Thus the half subtractor and full subtractor circuits are designed and the truth tables is verified using quartus software.


