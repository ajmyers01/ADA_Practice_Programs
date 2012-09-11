-- ######################################################
-- Alex Myers
-- CS3800
-- Data Structures and Algorithms
-- Due 9/11/2012
-- This program will fill a multi dimensional array with
-- random numbers and then output it to the console.
-- ######################################################

with Ada.Text_IO, Ada.Numerics.Discrete_Random, Ada.Float_Text_IO; 
use Ada.Text_IO, Ada.Float_Text_IO;
 
procedure two_dimensional_array is
  type Random_Number_Range is range 1..100;
  package Find_Random_Values is new Ada.Numerics.Discrete_Random (Random_Number_Range);
  use Find_Random_Values;
  Rand_Gen : Generator;
  Two_D_Array : array (1..20, 1..20) of Random_Number_Range :=
              (others => (others => Random(Rand_Gen)));
begin
 
Outer_Loop :
  for I in Two_D_Array'Range (1) loop
    for J in Two_D_Array'Range (2) loop
      Put (Random_Number_Range'Image (Two_D_Array (I, J)));
    end loop;
    New_Line;
  end loop Outer_Loop;
end two_dimensional_array;
