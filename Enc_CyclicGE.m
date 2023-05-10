function v=Enc_CyclicGE(u,g)

%u=[1 1 0 1], or u=[1 0 1 0] v(x)=x+x^2+x^3+x^5 [0 1 1 1 0 1 0], g(x)=1+x^2+x^3

%delta=u(x).x^n-k
% delta/g(x) -> remainder=b(x)
%v(x)=b(x)+delta

%Cyclic EnCode in systematic Form by using generator polynomial Equation 

%Check u is binary
if mod(u,2)==u
    k=length(u)
    %poly2sym fun is used to write polynomial equation of binary vector g[1 0 1 1] but write it in reverse order [1 1 0 1] to get the right equation, Message [1 1 0 1]->[1 0 1 1]
    
    gx=poly2sym(g)
    ux=poly2sym(u)
    
    %find is used to get index of non zero elements in vector g which will be in ex:1 2 4
    polyPowers = find(g) - 1
    paritybits=max(polyPowers)
    n=k+paritybits
    
    %syms Create symbolic variables, expressions, functions, matrices
    %expand multiplies all parentheses in inputs
    syms x
    power=x^paritybits
    delta_ux=expand(ux*power)
    
    %sym2poly returns the numeric vector of coefficients of the symbolic polynomial 
    delta_uxb=sym2poly(delta_ux)
    
    %when you use deconv function  parameters must be vestors"Binary"
    %fliplr Flip array left to right
    
    [Result,b]=deconv(delta_uxb,g)
    rx=poly2sym(mod(Result,2))
    bx=poly2sym(mod(b,2))
    v=fliplr(sym2poly(bx+delta_ux))
     
    if length(v)< n
        v(n)=0; 
    end
     
else
    disp('u must be a binary')
end
end