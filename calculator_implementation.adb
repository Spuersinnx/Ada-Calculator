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
	Value_A : Float;
	Value_B : Float;
	Answer_B : Float;
	
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
			Put_Line("2. Addition of 2 Numbers ");
			Put_Line("3. Subtraction of 2 Numbers");
			Put_Line("4. Multiplication");
			Put_Line("5. Division");
			Put_Line("6. Squaring ");
			Put_Line("7. Square Root");
			Put_Line("8. Exponential");
			Put_Line("9. Logarithmics");
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
					Put("Enter the total count of integers to be summed: ");
					get(Item => NumberValues);
					New_Line(1);

					Sum := 0;
					Put("Enter the integer values to be summed up, separated by a space: ");

					--for loop takes in multiple integers and adds recursively
					for Count in 1 .. NumberValues loop
						get (Item => CurrentValue);
						Sum := Sum + CurrentValue;
					end loop;

					Put(Item => "The Sum of your values is: " & Sum'img);
					
			-- Performing addition of 2 floats
				when 2 =>
					Ada.Text_IO.Put(Item => "In the form of a + b, enter the value a: ");
					Ada.Float_Text_IO.get(Item => Value_A);
					Ada.Text_IO.Put(Item => "Now, enter the value b: ");
					Ada.Float_Text_IO.get(Item => Value_B);
					Answer_B := Value_A + Value_B;
					
						
					Ada.Text_IO.Put("The result of your addition is: ");
					Ada.Float_Text_IO.Put (Item => Answer_B, Fore => 1, Aft => 4, Exp => 0);
					Ada.Text_IO.New_Line;
					
			-- Performing Subtraction operation
				when 3 => 

					Ada.Text_IO.Put(Item => "In the form of b - a, enter the value b: ");
					Ada.Float_Text_IO.get(Item => Value_B);
					Ada.Text_IO.Put(Item => "Now, enter the value a: ");
					Ada.Float_Text_IO.get(Item => Value_A);
					Answer_B := Value_B - Value_A;
					
						
					Ada.Text_IO.Put("The result of your subtraction is: ");
					Ada.Float_Text_IO.Put (Item => Answer_B, Fore => 1, Aft => 4, Exp => 0);
					Ada.Text_IO.New_Line;

					
			-- Performing Multiplication Operation
				when 4 =>
					
					Ada.Text_IO.Put(Item => "In the form of a x b, enter the value a: ");
					Ada.Float_Text_IO.get(Item => Value_A);
					Ada.Text_IO.Put(Item => "In the form of a x b, enter the value b: ");
					Ada.Float_Text_IO.get(Item => Value_B);
					Answer_B := Value_A * Value_B;

						
					Ada.Text_IO.Put("The result of your multiplication is: ");
					Ada.Float_Text_IO.Put (Item => Answer_B, Fore => 1, Aft => 4, Exp => 0);
					Ada.Text_IO.New_Line;

					
			-- Performing Division Operation
				when 5 =>
					Ada.Text_IO.Put(Item => "In the form of b / a, enter the the value b: ");
					Ada.Float_Text_IO.get(Item => Value_B);
					Ada.Text_IO.Put(Item => "In the form of b / a, enter the the value a: ");
					Ada.Float_Text_IO.get(Item => Value_A);
					Answer_B := Value_B / Value_A;
					
					Ada.Text_IO.Put("The result of your division is: ");
					
					-- formats decimal output with 4 decimal point
					Ada.Float_Text_IO.Put (Item => Answer_B, Fore => 1, Aft => 4, Exp => 0);
					Ada.Text_IO.New_Line;

					
			-- Performing Square Operation
				when 6 =>
					Put("Enter the value to be squared: ");
					get (Item => CurrentValue);
					SquareValue := CurrentValue * CurrentValue;
					Put("The square value of the entered number is: " & SquareValue'img);
					
					
			-- Performing Square Root operation
				when 7 =>
					Ada.Text_IO.Put_Line("The following operation will find and output the square root of your desired value");
					Ada.Text_IO.Put(Item => "In the form of sqrt(x), enter the value x which you wish to square root: ");
					Ada.Float_Text_IO.get(Item => Value);
					Answer := Ada.Numerics.Elementary_Functions.Sqrt(Value);
					Ada.Text_IO.Put("The square root of your input is: ");
					Ada.Float_Text_IO.Put (Item => Answer, Fore => 1, Aft => 4, Exp => 0);
					Ada.Text_IO.New_Line;

					
			-- Performing Exponential operation
				when 8 =>
					Put("In the form of exponentiation, a^N. Enter the integer value, a: ");
					get(Item => CurrentValue);
					Put("In the form of exponentation, a^N. Enter the integer value, N: ");
					get (Item => Power);
					
					-- performs built-in exponentiation function
					Exponent := CurrentValue ** Power;
					Put("Your exponential value is: " & Exponent'img);
					New_Line(1);
					
					
			-- Perfoming Log operation
				when 9 =>
					Ada.Text_IO.Put_Line("The following operation will perform Log10.");
					Ada.Text_IO.Put(Item => "In the form of lg(x), where the log base 10 of x will be found, enter the value x: ");
					Ada.Float_Text_IO.get(Item => Value);
					
					--uses Ada library to perform built-in log (x, base) function/ method
					Answer := Ada.Numerics.Elementary_Functions.Log(Value, 10.0);
					Ada.Text_IO.Put("The logarithmic value of your input is: ");
					Ada.Float_Text_IO.Put (Item => Answer, Fore => 1, Aft => 5, Exp => 0);
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
				
				
				
end calculator_implementation; --end procedure
			
			
			
			
			
	

			
