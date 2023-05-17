function [key, secret] = EncryptBinaryImage(binaryImage) 
  
[r,c,layer]= size(binaryImage); 
  
key = uint8(255*round(rand(r,c))); % generate correct sized key of values 
secret = zeros(r,c,'uint8'); % make sure output is right size and uint8 
  
% iterate over all pixels 
for i=1:r 
    for j=1:c 
        if (binaryImage(i,j) == 0) % black pixel 
            %encrypt using image complement 
            secret(i,j) = 255-key(i,j); 
        end 
    end 
end 
  
  
end 