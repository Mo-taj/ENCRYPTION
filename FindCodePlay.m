function [s] = FindCodePlay(x,y,k)
s='';
[r1,c1] = find(k==x);
[r2,c2] = find(k==y);
if r1==5
r1n=1;
else
r1n=r1+1;
end
if r2==5
r2n=1;
else
r2n=r2+1;
end
if c1==5
c1n=1;
else
c1n=c1+1;
end
if c2==5
c2n=1;
else
c2n=c2+1;
end
if r1==r2 && c1~=c2
s=strcat(k(r1,c1n),k(r1,c2n));
else if c1==c2 && r1~=r2

s=strcat(k(r1n,c1),k(r2n,c1));
else 
s=strcat(k(r1,c2),k(r2,c1))
end
end
end

