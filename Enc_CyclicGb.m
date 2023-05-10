function v=Enc_CyclicGb(u,g)

%Cyclic EnCode in not systematic Form by using Direct Method
%Example G=(1 1 0 1) , M=[1 0 0 1], [1 1 0 1]

%syms Create symbolic variables, expressions, functions, matrices

%poly2sym fun is used to write polynomial equation of binary vector g[1 1 0 1] but write it in reverse order [1 0 1 1] to get the right equation

%expand multiplies all parentheses in inputs

%sym2poly returns the numeric vector of coefficients of the symbolic polynomial 

%fliplr Flip array left to right

%syms x
gx=poly2sym(g)
ux=poly2sym(u)
v=fliplr(mod(sym2poly(gx*ux),2))
end

