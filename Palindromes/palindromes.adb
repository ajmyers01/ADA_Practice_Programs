-- *************************************************** 
-- *                                                 *
-- * Alex Myers                                      *
-- * Data Structures & Algorithms                    *
-- * Due 8/4/2012                                    *
-- *                                                 *
-- * This program will read in a string, and         *
-- * determine if it is a palindrome or not.         *
-- *                                                 *
-- ***************************************************

with Ada.Text_IO, Ada.Strings.Maps.Constants, Ada.Strings.Fixed;  
use Ada.Text_IO;
procedure Palindromes is
	function Is_Palindrome (Entered_String : in String) return Boolean is
  begin
		if Entered_String'Length <= 1 then
			return True;
		elsif Entered_String (Entered_String'First) /= Entered_String (Entered_String'Last) then
			return False;
		else
			return Is_Palindrome (Entered_String (Entered_String'First + 1 .. Entered_String'Last - 1));
		end if;
  end Is_Palindrome;
   
		Max_Length      : constant Positive := 100;
    	subtype Custom_String is String (1 .. Max_Length);
    Entered_String  : Custom_String; 
		Count           : Natural;
  begin
    Put_Line ("Enter a String to check if it is a palindrome");
 	  Get_Line (Item => Entered_String,  Last => Count);
 		Ada.Strings.Fixed.Translate(Entered_String, Ada.Strings.Maps.Constants.Lower_Case_Map);

	  if Is_Palindrome (Entered_String (1 .. Count)) then
      Put_Line ("This String is a palindrome");
	  else
	    Put_Line ("This String is not a palindrome");
    end if;

end Palindromes;
