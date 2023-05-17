function [] = UnitTestingFindMatches(ArrayOne,ArrayTwo,ExpectedOutput)  

ActualOutput = FindMatch(ArrayOne,ArrayTwo);

    fprintf('ExpectedOutput: [%s]\n', join(string(ExpectedOutput), ','));
    fprintf('ActualOutput: [%s]\n', join(string(ActualOutput), ','));
    if isequal(ActualOutput, ExpectedOutput)
            sprintf('Pass')
        else
            sprintf('Fail')
        end


end