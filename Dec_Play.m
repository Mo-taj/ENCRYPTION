function [Plain] = Dec_Play(Cipher,Key)
B = convertStringsToChars(Key);
K=zeros(5,5);
C = unique(B,'stable');
[m,n]=size(C);
r=1;
c=1;
for i=1:n
    if c==5
        K(r,c)=C(i);
        c=1;
        r=r+1;
    else
        K(r,c)=C(i);
        c=c+1;
        
end
end
Alpa=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];


 
for i=1:25
    if ~ismember(Alpa(i), C)
     if c==5
        K(r,c)=Alpa(i);
        c=1;
        r=r+1;
    else
        K(r,c)=Alpa(i);
        c=c+1;
        
end
    end
        
end

for i=1:5
    for j=1:5
   Kc(i,j)=char(K(i,j));
    end
end
Plain='';
[m,n]=size(Cipher);
i=1;
while i<n
 
x=Cipher(1,i);
y=Cipher(1,i+1);
Plain=strcat(Plain,FindDeCodePlay(x,y,Kc));
 
i=i+2;
end
end


