function plaintext=Dec_vigenere(ciphertext,k)
lenc=length(ciphertext);
lenk=length(k);
key=zeros(1,lenc);
i=1;
for j=1:lenc 
    if(ciphertext(j)==32)
       key(1,j)=ciphertext(j);
    else
       key(1,j)=k(i);
       i=i+1;
        if i>lenk
             i=1;
        end
    end
    
end
for x=1:lenc
    if (ciphertext(x)==32)
        continue;
    else
        ciphertext(x)=ciphertext(x)-65;
        key(x)=key(x)-65;
        plaintext(x)=lower(char(mod(ciphertext(x)-key(x),26)+65));
    end
end

end