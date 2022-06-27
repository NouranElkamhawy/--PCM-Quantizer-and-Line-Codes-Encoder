function [All_Points_Number,Output_Mark] = Alternate_Mark_Inversion(bit_stream, bit_duration, Amplitude)
No_Samples= 200;                                                        %number of samples in each Tb to draw continous graph
S_Size= bit_duration/No_Samples;                                        %SAMPLE SIZE
All_Points_Number = 0:S_Size:bit_duration * length(bit_stream);         %total numbers of points to generate mark inversion
Output_Mark = zeros(1,length(All_Points_Number));                       % SIGNAL OUTPUT as initialized vector
j= 0;                                                                   %counting 
for i = 0:length(bit_stream)-1                                          %for loop to draw mark inversion
  if bit_stream(i+1) == 1
      if rem(j,2) == 0              
          Output_Mark(i*No_Samples+1:(i+1)*No_Samples) = Amplitude;
          j = j + 1;
      else 
          Output_Mark(i*No_Samples+1:(i+1)*No_Samples) = -Amplitude;
          j = j + 1;
      end
  else
    Output_Mark(i*No_Samples+1:(i+1)*No_Samples) = 0;
  end
end
end