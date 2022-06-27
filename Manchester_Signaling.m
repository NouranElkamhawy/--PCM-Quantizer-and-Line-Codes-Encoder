function [All_Points_Number,Output_Manchester] = Manchester_Signaling(bit_stream, bit_duration, Amplitude)
No_Samples = 200;                                                                                     % Number of samples for each Tb 
S_size = bit_duration/No_Samples; % each sample size duration
All_Points_Number = 0:S_size:bit_duration * length(bit_stream);                                       % Total number of points 
Output_Manchester = zeros(1,length(All_Points_Number));                                               %Signal_output as initialized vector
for i = 0:length(bit_stream)-1
  if bit_stream(i + 1) == 1                                                                           %begin with 1 or zero
    Output_Manchester(i*No_Samples+1:(i+0.5)*No_Samples) = Amplitude;
    Output_Manchester((i+0.5)*No_Samples+1:(i+1)*No_Samples) = -Amplitude;
  else
    Output_Manchester(i*No_Samples+1:(i+0.5)*No_Samples) = -Amplitude;
    Output_Manchester((i+0.5)*No_Samples+1:(i+1)*No_Samples) = Amplitude;
  end
end
end






