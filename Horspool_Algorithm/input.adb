with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Unbounded;

procedure input is

	type uniqueArray is range 1..10;
	query : String(1..10); 
	Last : Natural;

	-- Find the shift table
	procedure shift_table is

		gene_letters : array (1..4) of Character;	
		type ARY_INT is array (1..4) of Integer;
		Last : Natural;

		shift_values : ARY_INT;
		procedure horspooloccurence is
			j : Integer;
			a : character;
			data : String;
		begin 
			for Index in gene_letters'range loop
				occurrence(Index) := -1;
			end loop;

			for j in 4..1 loop
				a := data(j);
				occurrence(a) := j;
			end loop;
		

			--Find query string and print to console

		end horspooloccurence;
	begin 
		-- assign static gene_letters elements
		gene_letters(1) := 'A';
		gene_letters(2) := 'C';
		gene_letters(3) := 'G';
		gene_letters(4) := 'T';
		-- find the shift values
			
		-- print the letters with according shift values 

		Put("------------------------------");New_Line;
		Put("|");
		Put(gene_letters(1));Put("  |  ");
		Put(gene_letters(2));Put("  |  ");
		Put(gene_letters(3));Put("  |  ");
		Put(gene_letters(4));Put("|");
		New_Line;
		Put("|");
		for Index in shift_values'range loop
		Put(shift_values(Index),4);
		Put(" | ");
		end loop;
		Put("|");
		New_Line;
		Put("------------------------------");New_Line;
	

		--Find query string and print to console

	end shift_table;

		procedure horspoolSearch is
			j : Integer;
			i : Integer;
		begin 
			i := 1;
			while (j>=0 and then data(j)=t(i+j)) loop
			if (j<0) then 
				put("success");
		        end if;
			i:= i+m-1;
			i:= i-occurrence(t(i));
			end loop;
			put ("fails");
		end horspoolSearch;
begin 
	put_line("Please Enter Sought String ");
	Get_Line(Item => query, Last => Last);
	New_Line;New_Line;New_Line;New_Line;

	Put("------------------------------");New_Line;
	Put("Search Query = ");Put_Line(query);
	Put("------------------------------");New_Line;

	--Find query string and print to console
 	shift_table;
	horspoolSearch;


end input;

