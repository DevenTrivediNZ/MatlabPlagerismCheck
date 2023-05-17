%% Creating a function to find the kgram 
% K-Gram is a substring containing a k amount of letters 
% then moves along the one letter at a time 
% Input one: The value of k which is a positive interger that is greater 
% than 0 
% Input two: A string in an array of characters
% Output: An array which is 1xk if the k value is greater than the string 
% returned is a 1x1 array
% Author: Deven Trivedi

function [OutPutArray] = Kgram(Kvalue,StringArray)

% 1. For loop for the length of the string array 
% 2. create a sub string with the value of k
% 3. move through the value of strings 
% 4. Return the string
% finding the size of the array
[row,cols] = size(StringArray); 
SizeChange = Kvalue; 
OutPutArray = {''};
% counter = the counter for the sub arrays
  counter = 1;
    % i is the index value for the string array
    for i = 1:length(StringArray)
        if Kvalue <= length(StringArray)           
           if SizeChange <= cols   
              OutPutArray{counter} = (StringArray(i:SizeChange));
              SizeChange = Kvalue + i;
              counter = counter + 1;           
           end
        elseif Kvalue> length(StringArray) 
               OutPutArray{1} = StringArray;
        end
    end
 
end