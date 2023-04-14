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

module HalfSubtractor(A,B,Diff,Borrow);
input A,B;
output Diff,Borrow;
wire x;
xor (Diff, A,B);
not(x,A);
and(Borrow,x,B);
endmodule

FULL SUBTRACTOR:

module FullSubtractor(A,B,C,Diff,Borrow);
input A,B,C;
output Diff,Borrow;
wire p;
assign Diff = ((A^B)^C);
not(p,A);
assign Borrow = ((p&B)|(p&C)|(B&C));
endmodule



```

## Output:

## Half Subtractor:

## Logic Symbol:

![i1](https://user-images.githubusercontent.com/93427534/232090847-cf5b2333-3e77-40ec-8345-17a49bfbc0dc.png)


## Truthtable:

![i2](https://user-images.githubusercontent.com/93427534/232090855-c816615d-894a-42e1-ad0f-bcbf17e4e867.png)


##  RTL realization:

![i3](https://user-images.githubusercontent.com/93427534/232090863-999cb9f1-fa6e-4145-9e34-4baf49da7906.png)


## Timing diagram :

![i4](https://user-images.githubusercontent.com/93427534/232090873-59c2497b-bb69-4c11-a3c9-8f3919756963.png)


## Full Subtractor:

## Logic Symbol:

![i5](https://user-images.githubusercontent.com/93427534/232090905-5990e1ba-e3d6-41a0-8088-dd66b68688c1.png)


## Truthtable:

![i6](https://user-images.githubusercontent.com/93427534/232090914-9af8285a-9b3d-4063-950d-dcdbb8a402c6.png)


##  RTL realization:

![i7](https://user-images.githubusercontent.com/93427534/232090927-ff771c74-400a-4ea7-9de6-2b75f7cdaee6.png)


## Timing diagram :

![i8](https://user-images.githubusercontent.com/93427534/232090936-5fb2efb2-dbf0-4d03-816d-3b015b92c52c.png)



## Result:
Thus the half subtractor and full subtractor circuits are designed and the truth tables is verified using quartus software.


