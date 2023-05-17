
%% Takes a sequence of intergers and gives back a 2D Array
% The Array size is determined by the width of the window which is inputed
% Input: Window size which is a postive value which is greater than 0
% Input: A 1D array of intergers
% Output: A 2D array of interger values where each row is a window
% containing the

function [WindowedOutputArray] = Window(cols,InputArray)

% 1. Predetermine the size of the array using the w value
% 2. Define the value for the variable r for the size of the rows
% 3. Using a predetermined equation to find the size of the matrix
%    nested while loops to go through the values of w and once it does it
% 4. creates a new row and goes through until it is gone through the whole
% input array
%

% possible solution for loop to go through the lenght of the input array
% second for loop going through the cols only if w = length of w
% third for loop which goes through the width until w = length of w
% end

LenghtOfInputArray = length(InputArray);
Rows = (LenghtOfInputArray - cols) + 1;
WindowedOutputArray = zeros(Rows, cols);


% counter i for the input array
i = 1;

% checks if cols/w is greater than the length of the array or not
% if it is it returns the input array if not then goes through the for loop
if cols > length(InputArray)
   WindowedOutputArray = InputArray;
else
    for j = 1:Rows
        for k = 1:cols
            WindowedOutputArray(j,k) = InputArray(i);
            % less than or equal to to allow i go to 5 to stop it going
            % into a infinte loop
            if i <= length(InputArray)
                i = i + 1;
            end
        end
        % equation to bring the i counter back to count through the array
        % less than or equal to to allow the i to incriment back
        if i <= length(InputArray)
            i = i - (cols - 1);
        end
    end
end


end






