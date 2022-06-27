function[Sampled_signal,MSE]=QNTZR(input,Meu,Mp,MR,L,UNI) 
step = 2*Mp/L; %the delta that will be used in the quantizer neither uniform or non-uniform. 
Q_ERROR=step/2; 
Sampled_signal = zeros(size(input)); %set the values of the vector as zeros and the same size of the input signal
  for i=1:length(input)
        if(UNI)% UNIFORM QUANTIZER as the UNI will be true or false from the GUI
            if(MR) %once it reached to this point it is uniform
                N = ceil(abs(input(i))/step); %now we will deal with this signal using uniform quantizer and mid rise
                if(N~=0)
                    QUNTZ_VAL = (Q_ERROR+(N-1)*step)*sign(input(i)); % Quantized value of the signal
                else
                    QUNTZ_VAL = (Q_ERROR+(N-1)*step);
                end
            else % uniform mid-tread signal
                 QUNTZ_VAL = step*round((ceil(2*input(i)/step))/2); %to check if the quantizer in negative value 
                if(QUNTZ_VAL<-(L/2 - 1)* step)
                    QUNTZ_VAL=-(L/2 - 1)*step;
                end
            end
        else %NON-UNIFORM
            normal_input = abs(input(i))/Mp; % normalized input value
            if(Meu == 0) 
                QUNTZ_VAL = input(i);
            else
                QUNTZ_VAL = sign(input(i))*Mp*(log(1+Meu*normal_input)/log(1+Meu));
            end
            %unfirom quantize the value:
            QUNTZ_VAL =QNTZR(QUNTZ_VAL,Meu,Mp,MR,L,true);
        end
        Sampled_signal(i) = QUNTZ_VAL;
   end
   MSE = immse(input, Sampled_signal); % mean square quantization error take the input signal and output one  
end