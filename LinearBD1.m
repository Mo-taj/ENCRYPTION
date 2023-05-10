function [i,v] = LinearBD1(g)
g=input('Enter the Generator Matrix:')
[k,n]=size(g);
x=n-k;
h=gen2par(g) 
v=input('Enter the received code word: ')
ht=transpose(h)
syndromevector=v*ht
disp('Syndrome of a Given Code vector is :')
s=mod(syndromevector,2)

if sum(s)==0
    disp('No error')
    disp('The decoded message is:');
    for i=1:length(v)
        u=v(x+1:n) 
        break;
    end 
else
    for i=1:size(ht,1)
        if (ht(i,1:x)==s)
            v(i)=1-v(i)
            break;
        end
    end
    disp('The error is in bit:')
    i
    disp('The corrected code vector is:')
    v
    disp('The decoded message is: ')
    for i=1:length(v)
        u=v(x+1:n)
        break;
    end 
end

end

