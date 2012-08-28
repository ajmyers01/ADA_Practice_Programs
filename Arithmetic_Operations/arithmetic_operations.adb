-- *************************************************************************************************
-- Alex Myers
-- CS3800
-- Data Structures and Algorithms
-- Due 8/28/2012
-- This program will take input of of 3 values and find both the sum and the product of each value.
-- The original values will be output along with the answers.
-- *************************************************************************************************
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
procedure Arithmetic_Operations is
	
	procedure Sum_And_Product (Num_1, Num_2, Num_3 : Integer; sum, product : out Integer) is 
	begin
			sum 		:= Num_1 + Num_2 + Num_3;
			product := Num_1 * Num_2 * Num_3; 
	end Sum_And_Product;

	Num_1 : Integer; Num_2 : Integer; Num_3 : Integer;
	Sum   : Integer; Product : Integer;
begin
  Put_Line("Welcome to the Arithmetic_Operations Program ");
  New_Line;
  Put ("Please Enter your first number: ");
  Get (Num_1); --Read in first number 
  Put ("Please Enter your second number: ");
  Get (Num_2); --Read in first number
  Put ("Please Enter your third number: ");
	Get (Num_3); --Read in first number
	Sum_And_Product(Num_1, Num_2, Num_3, Sum, Product);
  Put_Line(Integer'Image(Num_1) & " +" & Integer'Image(Num_2) & " +" & Integer'Image(Num_3) & " =" & Integer'Image(Sum));
  Put_Line(Integer'Image(Num_1) & " *" & Integer'Image(Num_2) & " *" & Integer'Image(Num_3) & " =" & Integer'Image(Product));

end Arithmetic_Operations;
