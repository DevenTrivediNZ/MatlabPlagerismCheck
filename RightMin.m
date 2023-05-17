%% Find the right most minimum value
% Input: A 1D array of values which must contain atleast one value
% 
% Output: The minimum value of the right most position and the position it
% is at
% Author: Deven Trivedi
% Date created: 02/09/2022

function [MinValue, Position] = RightMin(OneDArray)

% Finding the min value of the array
MinValue = min(OneDArray);

% finding the position of the min value 
Pos = find(OneDArray == MinValue);

% The position of the min value in the 1D array
Position = max(Pos);


end