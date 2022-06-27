function [All_Points_Number,Output_Unipolar] = UniPolar_NRZ(bit_stream, bit_duration, Amplitude)
No_Samples= 200;
s_size = bit_duration/No_Samples;   %size of samples
All_Points_Number= 0:s_size:bit_duration * length(bit_stream);
Output_Unipolar = zeros(1,length(All_Points_Number)); 
for i = 0:length(bit_stream)-1
  if bit_stream(i + 1) == 1
    Output_Unipolar(i*No_Samples+1:(i+1)*No_Samples) = Amplitude;
  else
    Output_Unipolar(i*No_Samples+1:(i+1)*No_Samples) = 0;
  end
end
end