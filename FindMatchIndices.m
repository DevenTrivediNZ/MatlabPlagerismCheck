%% This function Compares two arrays and returns, list of indexed positions
% Input:Two arrays, ArrayOne and ArrayTwo
% Output: List of indexed Positions in ArrayOne that around found in
% ArrayTwo, Listed from the smallest to the biggest
% Author: Deven Trivedi
% Date Created: 02/09/2022

function [MatchIndex] = FindMatchIndices(ArrayOne, ArrayTwo)

% creating a for loop to go through and compare both arrays till the length
% of the first array using the variable k
% Breakdown
% 1. for loop 1 goes through the length of the second array
% 2. goes through the length of the first array
% 3. Have to check through the new array to see if there are any dublicates
% if there are dont add into match array
% 4. The match array holds the indexed numbers
% 5. Adding another for loop to go through the values of the match array to 
% find duplicates  
% 6. The problem is outputing a empty array as it does not go through 
% the end of the if statement number one Matcharray(c) = k; bit
% 7. if it does not find a match then it gets out of it
% 8. If it does not == each other then the intended function is carried out
% by the end
% 9. the boolean value is set to false at the start of the first for loop
% if the matcharrays have duplivates then the boolean value is false
% the array will only index into the matcharray if the value of the boolean
% storing it in the variable
% is true
% 10. Finding a match between array 1 and 2 and indexing the match with
% respect to array one
% 11. Adding boolean loops into the first for loop and creating a variable
% to find to remove the duplicates
a3Index = 1;

% setting an empty array for the MatchIndex to make it more efficent
MatchIndex = [];
    % goes through Array one and array two to find a match
    for a1Index = 1:length(ArrayOne)
        for a2Index_1 = 1:length(ArrayTwo)
            % if the numbers are equal to each other it indexes it into
            % the MatchIndex Array
            if ArrayOne(a1Index) == ArrayTwo(a2Index_1)
               a2ElementCount = 0;
               MatchIndex(a3Index) = a1Index;
               a3Index = a3Index + 1;
              % loop to break when a duplicate is found 
               for a2Index_2 = 1:length(ArrayTwo)
                   if ArrayTwo(a2Index_2) == ArrayTwo(a2Index_1)
                      a2ElementCount = a2ElementCount + 1;
                      break
                   end
               end
              if a2ElementCount >= 1
                 break
              end
           end
        
        end
    end
end