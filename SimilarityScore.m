%% Calculate the similarity score of a string
% input: 1D array with a list of indices which correspond to the position
% it is matched at 
% input: The k value 
% Input: The total length of the string 
% Output: a percentage of the string that matched returning a decimal value

function [score] = SimilarityScore(matchPosition,kValue,stringLength)


% Look at the string length and relate that to the kValue (how much you can
% iterate to verify

stringPositionMatch = [];
stringPositionMatch(1:stringLength) = 0;
% boundary conditions 
% empty array return 0

% when there is a match it turns the values of the preset 0 array to 1
% using the kvalue from the position of the match index to the predertmined
% equation it turns the preset string position to 1 


for j = 1:length(matchPosition) 
    matchIndex = matchPosition(j);
    stringPositionMatch(matchIndex : (matchIndex + kValue - 1)) = 1;
end

% sums all the 1 values and divides by the legnth of the string to give a
% score value
score = sum(stringPositionMatch,'all');
score = score/stringLength;
