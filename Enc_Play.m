function [Cypher] = Enc_Play(Plain,Key)
B = convertStringsToChars(Key);
K=zeros(5,5);
C = unique(B,'stable');
[m,n]=size(C);
r=1;
c=1;
[q,p]=size(Plain);
for i=1:p
    if Plain(i)=='j'
        Plain(i)='i';
    end
end
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
Cypher='';
[m,n]=size(Plain);
i=1;
while i<=n
if  rem(n,2)==1 && i>=n
x=Plain(1,n);
y='z';
Cypher=strcat(Cypher,FindCodePlay(x,y,Kc));
else
x=Plain(1,i);
y=Plain(1,i+1);
Cypher=strcat(Cypher,FindCodePlay(x,y,Kc));
end
i=i+2;
end

end


