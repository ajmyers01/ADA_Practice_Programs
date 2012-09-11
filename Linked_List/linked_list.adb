-- ############################################################
-- Alex Myers
-- CS3800
-- Data Structures & Algorithms
-- Due Sept/11/2012
-- This program will read in floats from a file and enter them 
-- into a linked list. Then that linked list will be printed
-- to the console.
-- ############################################################
with Gnat.Io, Ada.Float_Text_IO, Ada.Text_IO;
use  Gnat.Io, Ada.Float_Text_IO, Ada.Text_IO;
procedure linked_list is
  type Node;  
  type Node_Ptr is access Node;    

  type Node is record            
    Data: Float;
    Next: Node_Ptr;
  end record;

  InputFile : Ada.Text_IO.File_type;
  Head      : Node_Ptr;               
  New_Node  : Node_Ptr;          
  Scan_Ptr  : Node_Ptr;         
  In_Float  : Float;           

begin
	Open(File => InputFile,
			 Mode => In_File,
			 Name => "input.txt");

  loop
	  Get(File => InputFile, Item => In_Float);
    exit when In_Float = -1.0;

    New_Node      := new Node'(In_Float, null);
    New_Node.Next := Head;
    Head          := New_Node;
  end loop;
	 
	Close(File => InputFile);
  Scan_Ptr := Head;
  
	loop
    exit when Scan_Ptr = null;

    Ada.Text_IO.Put_Line(Float'Image(Scan_Ptr.Data));
    Scan_Ptr := Scan_Ptr.Next;

    exit when Scan_Ptr = null;

    Ada.Text_IO.Put(" ");
  end loop;
  Ada.Text_IO.New_Line;
end linked_list;
