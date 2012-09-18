generic

		type ElementType is private;
		Size : Integer := 100;

package Array_Package is 

		type GenericArray is Array (0..Size-1) of ElementType;

		Procedure Initialize (Arry : in out GenericArray);
end Array_Package;
