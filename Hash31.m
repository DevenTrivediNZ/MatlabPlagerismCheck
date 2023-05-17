%% Hash31 calculates the Hash values for a 1D array
% Author: Deven trivedi
% Date Created: 2/09/2022
% Any known bugs: At the time of 2/09/2022 no known bugs with this function

%% Input
% 1D array of values which can be either characters or intergers
% Named InputArray

%% Output
% An interger value calculated by the function 
% named OuputHash

%%
function [OutputHash] = Hash31(InputArray)

% reading the input array and converting to ASCII 
double(InputArray);

% setting the output hash value as 0 
OutputHash = 0;

% calculating the length of the input array 
LengthOfArray = length(InputArray);

% setting the counter i = to 1
i = 1;

    % writing the while loop for the function which reads through the array
    % and gets the hash values of the array 
    % 1. checks condition 
    % 2. multiple two possibilties
    % 3. if i greater than the length of the array
    % 4. carries out operation 
    % 5. updates count
    % 6. if i is not less than the length of the array
    % 7. returns the output hash
    while i <= LengthOfArray
        OutputHash = InputArray(i) + (31*OutputHash);
        OutputHash =  mod(OutputHash,1048576);
        i = i+1;
   end

    disp(OutputHash);

end


