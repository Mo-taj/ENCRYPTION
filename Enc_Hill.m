function Ciphertext=Enc_Hill(Plaintext,k)
    % take the size of one of the dimensions 1: refers to rows , 2: refers
    % to columns
    lenk=size(k,2);
    
    %reshape( plaintext, D:ws, D:cols)
    Ciphertext=reshape(Plaintext,[],lenk)*0;
    [nr,ncol]=size(Ciphertext);
    
    x=1;
    for j=1:nr
        for i=1:ncol
              Ciphertext(j,i)=Plaintext(x)
              x=x+1;
        end  
    end
    
      %a=97  , z=122    
      Ciphertext=Ciphertext-97
      Ciphertext=upper(char(mod(Ciphertext*k,26)+97));
     
    h=1;
    for j=1:nr
        for i=1:ncol
            m(1,h)=Ciphertext(j,i);
            h=h+1;
        end  
    end
    Ciphertext=m;
end