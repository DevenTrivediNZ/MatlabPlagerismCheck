%% Compare 2 fingerprints and find positions for both
% Inputone: Fingerprint for string 1
% Inputtwo: Fingerprint string 2
% output 1: 1d array of the position of matches relative to string two
% Output 2: 1d array of positions of matches relative to string one

function [PositionOne,PositionTwo] = FindMatchPositions(f1,f2)


% predermined values seperating 2d array into 1d array and creating an
% empty array for position 1 and position 2
f1FirstRow = f1(1,:);
f2FirstRow = f2(1,:);
PositionOne = [];
PositionTwo = [];
f1SecondRow = f1(2,:);
f2SecondRow = f2(2,:);


% matches for 1st array respect to the second
% Indexes of hash values in f1 array that are found in f2
f1_matches_in_f2 = FindMatchIndices(f1FirstRow,f2FirstRow);


% Relate index in Matches Array to f1Second Row
for i = 1:length(f1_matches_in_f2)
    %   Use index in matches to grab value from f1SecondRow
    matchingIndex = f1_matches_in_f2(i);
    %   Last action
    PositionOne(i) = f1SecondRow(matchingIndex);
end


% Indexes of hash values in f2 array that are found in f1
f2_matches_in_f1 = FindMatchIndices(f2FirstRow,f1FirstRow);

% Relate index in Matches2 Array to f2Second Row
for i = 1:length(f2_matches_in_f1)
    %   Use index in matches to grab value from f2SecondRow
    matchingIndex = f2_matches_in_f1(i);
    %   Last action
    PositionTwo(i) = f2SecondRow(matchingIndex);
end


end