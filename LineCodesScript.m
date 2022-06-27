clc
clear
Rand=0;
signal_option = input("choose" + ...
    " 1 for UniPolar NRZ " + ...
    " 2 for Polar RZ " + ...
    " 3 for Alternate Mark Inversion " + ...
    " 4 for Manchester: ");
Rand = input("Do you want to generate Random N bits ( 1 for Yes " + ...
    " 2 for No): ");
if (Rand==1)
Number_of_Bits = input("Number of the generated Random Bits: ");
BS = randi([0 1],1,Number_of_Bits);
else
bit_stream_string = input("Enter your bit stram (ex) 1,0,0,1 : ",'s'); %your input is bit_stream_string = 1,0,0,1;
BS = str2double(strsplit(bit_stream_string,','));
end
bit_duration = input("Enter the Bit Duration");
Amplitude = input("Enter the Amplitude");
switch signal_option % Generating Line Code Output according to the chosen Signaling Option
case 1
[t,s] = UniPolar_NRZ(BS,bit_duration,Amplitude);
plot(t,s,'LineWidth',3);
title(['UniPolar NRZ: [' num2str(BS) ']']);
case 2
[t,s] = Polar_RZ(BS,bit_duration,Amplitude);
plot(t,s,'LineWidth',3);
title(['Polar RZ: [' num2str(bit_stream) ']']);
case 3
[t,s] = Alternate_Mark_Inversion(BS,bit_duration,Amplitude);
plot(t,s,'LineWidth',3);
title(['Alternate Mark Inversion: [' num2str(bit_stream) ']']);
case 4
[t,s] = Manchester_Signaling(BS,bit_duration,Amplitude);
plot(t,s,'LineWidth',3);
title(['Manchester: [' num2str(BS) ']']);
end