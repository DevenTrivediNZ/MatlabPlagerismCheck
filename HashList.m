%% Calculate the hash value for every string that is stored
% Input: A 1 by n cell array with each element in the string 
% Output: A 1 by n array containing the hash values for the elements
% Author: Deven
% 1. Calculate the amount of subarrays in the array inputed
% 2. Use a for loop to go through the sub arrays and use the hash31
% function to convert to hash values

function [HashArrayOutput] = HashList(InputSubArray)

AmountOfSubArrays = numel(InputSubArray);

    for i = 1:AmountOfSubArrays
        AsciiSubArray = double(InputSubArray{i});
        HashArrayOutput(i) = Hash31(AsciiSubArray);
    end
end
        
