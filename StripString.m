%% stripString function removes all the white spaces from the string and makes it lower case
% Input: A string
%  An array of characters which has all unprintable has been removed and
%  all uppercase has become lower case

function [OutputString] = StripString(InputString)

OutputString = [];
InputString = lower(InputString);
% going through the string puts all the characters into an array and doesnt
% put any whitespaces in it
% 1. converts characters into ASCII characters 
% 2. reads through if it find any whitespace characters it will not add
% them to the vector if it does find any that arent whitespace it will add
% it into the array 
% 3. converts ASCII back into characters
% incrimenting j
j = 1;
InputString = double(InputString);
    for i = 1:length(InputString)
        if InputString(i) > 32
          if InputString(i) < 127
             OutputString(j) = InputString(i);
             j = j + 1;
          end
        end

    end
    OutputString = char(OutputString);
end