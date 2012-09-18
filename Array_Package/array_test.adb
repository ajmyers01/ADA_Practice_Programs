with Array_Package, ADA.Text_IO, ADA.Integer_Text_IO;
use ADA.Text_IO, ADA.Integer_Text_IO;


procedure Array_Test is

		Procedure GenerateArray (Size : Integer) is
				package GenericArray is new Array_Package(Integer, Size);
				subtype GenericArrayType is GenericArray.GenericArray;

				my_array : GenericArrayType;
		begin
				GenericArray.Initialize(my_array);
		end GenerateArray;

		array_size : Integer;
		array_type : String := "";
begin
put("Enter Size of Array desired");
get(array_size);
get(array_type);
if (array_type = "Integer") then
		GenerateArray(array_size);
end if;
put("Enter type of array");
--new_array := Array_Package.Set_Size(array_size);
--Array_Package.Find_Array_Type(array_type,new_array);

end Array_Test;
