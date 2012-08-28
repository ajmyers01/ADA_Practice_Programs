--****************************************************************************
-- Alex Myers
-- CS3800
-- Data Structures & Algorithms
-- Due 8/28/2012
-- This program will read in 2 floating point values and calculate the ratio 
-- ***************************************************************************
with Ada.Text_IO, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Float_Text_IO;
procedure Floating_Ratios is
	procedure Find_Ratio (Num_1, Num_2 : Float; ratio : out Float) is begin
		ratio := Num_1 / Num_2;	
	end Find_Ratio;
		Num_1, Num_2 : Float;
		Ratio        : Float;
begin 
		Put_Line("Welcome to the Floating Point Ratio Program ");
		New_Line;
		Put ("Please Enter your first number: ");
		Get (Num_1); --Read in first number
		Put ("Please Enter your second number: ");
		Get (Num_2); --Read in first number
		
		Find_Ratio (Num_1, Num_2, Ratio);
		Put(Item => Num_1, Exp => 0, Aft => 3);
    Put(" /");
		Put(Item => Num_2, Exp => 0, Aft => 3);
		Put("=");
	  Put(Item => Ratio, Exp => 0, Aft => 3);
end Floating_Ratios;
