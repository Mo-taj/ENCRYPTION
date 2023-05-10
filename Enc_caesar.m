function Ciphertext=Enc_caesar(Plaintext,k)
    %key between (1 - 25)
    if k>25 || k<1
         disp('Key must be in range from 1 to 25')
         Ciphertext='';
    
    else
    
        for i= 1:length(Plaintext)
            %once he found a space, skip this iteration, ASCII of space=32
            if (Plaintext(i)==32)
                continue;
            end
    
             %using addition to find cipherletter "using ASCII code for letters"
             %a=97  , z=122
            Ciphertext(i)=Plaintext(i)+k;
            
            if Ciphertext(i) >122
               Ciphertext(i)=Ciphertext(i)-26;
            end
    
        end
        Ciphertext=upper(char(Ciphertext));
        
    end
   
end