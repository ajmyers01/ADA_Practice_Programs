-- This program will read in a number and find that nth fibonacci number, 2 to the nth, and n!
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Long_Long_Integer_Text_IO; 
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Long_Long_Integer_Text_IO;
procedure Fibonacci is

	function Find_Fib(Num_1: Long_Long_Integer) return Long_Long_Integer is
  begin
		if Num_1 <= 2 then
			return 1;
		else
			return Find_Fib(Num_1-1) + Find_Fib(Num_1-2);
		end if;
	end Find_Fib;

	function Find_Nth (Num_1 : Long_Long_Integer) return Long_Long_Integer is
		Result : Long_Long_Integer := 1;
		Counter : Long_Long_Integer:= 0; 
	begin
		while Counter < Num_1 loop
			Result := Result * 2;
			Counter := Counter + 1;
		end loop;

		return Result;
	end Find_Nth;

	function Find_Factorial (Num_1 : Long_Long_Integer) return Long_Long_Integer is 
		Factorial_result : Long_Long_Integer := Num_1;
		Counter 				 : Long_Long_Integer := Num_1 - 1;
	begin
		for I in reverse 1..Counter loop
			Factorial_result := Factorial_result * I;
		end loop;
		return Factorial_result;
	end Find_Factorial;

		Num_1 : Long_Long_Integer;
begin 
		Put ("Please Enter A Number:");
		Get (Num_1); 
    Put_Line("Nth Result:" & Long_Long_Integer'Image(Find_Nth(Num_1)));
    Put_Line("Factorial:"  & Long_Long_Integer'Image(Find_Factorial(Num_1)));
    Put_Line("Fibonacci Number:" & Long_Long_Integer'Image(Find_Fib(Num_1)));
end Fibonacci;
