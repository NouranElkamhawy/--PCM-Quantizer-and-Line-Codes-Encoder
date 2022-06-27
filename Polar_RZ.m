function [All_Points_Number,Output_Polar]= Polar_RZ(bit_stream, bit_duration, Amplitude)
No_samples = 200;
S_size = bit_duration/No_samples;   %sample size
All_Points_Number = 0:S_size:bit_duration * length(bit_stream);
Output_Polar = zeros(1,length(All_Points_Number)); 
for i = 0:length(bit_stream)-1
  if bit_stream(i+1) == 1
    Output_Polar(i*No_samples+1:(i+0.5)*No_samples) = Amplitude;
    Output_Polar((i+0.5)*No_samples+1:(i+1)*No_samples) = 0;
  else
    Output_Polar(i*No_samples+1:(i+0.5)*No_samples) = -Amplitude;
    Output_Polar((i+0.5)*No_samples+1:(i+1)*No_samples) = 0;
  end
end
end