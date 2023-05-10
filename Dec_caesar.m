function Plaintext=Dec_caesar(Ciphertext,k)

    %key between (1 - 25)
    if k>25 || k<1
        disp('Key must be in range from 1 to 25');
        Plaintext='';
    else
    
            for i= 1:length(Ciphertext)
            %once he found a space, skip this iteration, ASCII of space=32
            if (Ciphertext(i)==32)
                continue;
            end
    
             %using addition to find cipherletter "using ASCII code for letters"
             %A=65  , Z=90
            Plaintext(i)=Ciphertext(i)-k;
            
            if Plaintext(i) <65
                Plaintext(i)=Plaintext(i)+26;
            end
    
        end
        Plaintext=lower(char(Plaintext));
        
    end
    
   
end
