%% Uses windowed values and documents a fingerprint
% input: a 2D array a set of windows
% Output: a 2 row 2D array showing the min values and the positions

function [fingerPrintMatrix] = Fingerprint(windowInput)

% FInd the amount of cols 
% Read every column of 2d array and in 1d array increment by the number of
% cols
[rows,cols] = size(windowInput);
fingerPrintMatrix = [0 ; 0]
j = 1;

% Look at test case thast pased and the one that failed
% understand difference
% right min value check wether it is the same as the previous right min
% valu and whether it belongs to the same location in the one d array
% reason we do this if it belongs to the same location of the one d array
% we should not be adding it to the min hash values as well as getting the
% relative positions for it. This avoids duplication
i = 0;
if rows == 1 && cols == 1
    [fingerPrintMatrix(1,j), fingerPrintMatrix(2,j)]  =  RightMin(windowInput(i));

elseif rows > 0 && cols > 0
    for i = 1:cols-1:rows
        window = windowInput(i,:);
        [fingerPrintMatrix(1,j), position] = RightMin(window);
        fingerPrintMatrix(2,j) = position + (i-1);
        j = j+1;
    end
end

fingerPrintMatrix = unique(fingerPrintMatrix.', 'rows', 'stable')';


end