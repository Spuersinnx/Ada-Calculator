with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure calculator_implementation is 
	
	Option : Integer;
	Sum : Integer;
	CurrentValue : Integer;
	SquareValue : Integer;
	Power : Integer;
	Exponent : Integer;
	NumberValues : Natural;
	
	SUBTYPE NonNegFloat IS Float RANGE 0.0 .. Float'Last;
	Value : NonNegFloat;
	Answer : NonNegFloat;


		begin 
			Put_Line("Welcome to the Ada Calculator Program");
			New_Line;
			Put_Line("This program allows you to execute the functionalities below:");
			
			New_Line;
			
			-- Menu with operation choices
			Put_Line("1. Addition of Multiple Integers ");
			Put_Line("2. Subtraction of 2 Integers");
			Put_Line("3. Multiplication");
			Put_Line("4. Division");
			Put_Line("5. Squaring ");
			Put_Line("6. Square Root");
			Put_Line("7. Exponential");
			Put_Line("8. Logarithmics");
			Put_Line("0. Exit Program");
			
			New_Line;
			
			--loop until user decides to quit program
			loop
				
			New_Line(1);
			Put("Please enter your choice: ");
			get(Option);
			
			New_Line(1);
			Put_Line("You have selected: Option" & Option'img);
			New_Line(1);

			-- Performing the addition operation
			case Option is
				when 1  =>
					Put_Line("Enter the total count of integers to be summed: ");
					get(Item => NumberValues);
					New_Line(1);

					Sum := 0;
					Put("Enter the integer values to be summed up, separated by a space: ");

					for Count in 1 .. NumberValues loop
						get (Item => CurrentValue);
						Sum := Sum + CurrentValue;
					end loop;

					Put(Item => "The Sum of your values is: " & Sum'img);
					
			-- Performing Subtraction operation
				when 2 => 

					Sum := 0;
					Put("Enter the integer values to be subtracted, separated by a space: ");
					for Count in 1 .. 2 loop
						get (Item => CurrentValue);
						Sum:= CurrentValue - Sum;
   					end loop;

					Put(Item => "The result of subtracting your values is: " & Sum'img);
					
			-- Performing Squaring operation	
				when 5 =>
					Put("Enter the value to be squared: ");
					get (Item => CurrentValue);
					SquareValue := CurrentValue * CurrentValue;
					Put("The square value of the entered number is: " & SquareValue'img);
					
			-- Perform Exponential operation
				when 7 => 
					Put("In the form of exponentiation, a^N. Enter the integer value, a: ");
					get(Item => CurrentValue);
					Put("In the form of exponentation, a^N. Enter the integer value, N: ");
					get (Item => Power);
					Exponent := CurrentValue ** Power;
					Put("Your exponential value is: " & Exponent'img);
					New_Line(1);
					
			-- Perform Logarithmic operation
				when 8 =>
					Ada.Text_IO.Put_Line("The following operation will perform Log10.");
					Ada.Text_IO.Put(Item => "In the form of lg(x), where the log base 10 of x will be found, enter the value x: ");
					Ada.Float_Text_IO.get(Item => Value);
					-- Put(Item => "The logarithmic result of your value is: " &Log'img);
					Answer := Ada.Numerics.Elementary_Functions.Log(Value, 10.0);
					Ada.Text_IO.Put("The logarithmic value of your input is: ");
					Ada.Float_Text_IO.Put(Item => Answer);
					Ada.Text_IO.New_Line;
									
			-- Exit Program		
				when 0 => 
					Put_Line("Goodbye!");
					
			-- Validate Menu Choice	
				when others => 
					Put("I'm sorry, you have entered an invalid menu choice. Please enter your selection again: ");
					
			end case;
			exit when Option = 0;
			end loop;
				
				
				
end calculator_implementation;
			
			
			
			
			
	

			