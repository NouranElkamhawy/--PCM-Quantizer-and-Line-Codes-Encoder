clc
clear
set(0,'defaultlinelinewidth',2);

Am= 8; %Input signal amplitude
Fm= 2; %Input signal frequency
Fs= [8 4 3 4 8 4 3 4];
Meu= [0 0 255 255 0 0 0 255];
L= [16 32 16 32 16 32 16 32];
Mp= [8 8 8 8 8 8 8 8];
UNI= [true true true false true true true false];
MR= [false true true true false false false false];
%Fs= [800 300];
%UNI= [true true];
%MR= [false true];
%Meu= [0 255];
%Mp= [8 8];
%L= [16 16];
%%%%%%%%%%% 1- test cases with midrise
%test case1: fs=8Hz, meu=0, l=16, mp=8, uniform and midrise
%test case2: fs=4Hz, meu=0, l=32, mp=8, uniform and midrise
%test case3: fs=3Hz, meu=0, l=16, mp=8, uniform and midrise
%test case4: fs=4Hz, meu=255, l=32, mp=8, non-uniform and midrise
%%%%%%%%%%% 2- test cases with midtread
%test case5: fs=8Hz, meu=0, l=16, mp=8, uniform and midtread 
%test case2: fs=4Hz, meu=0, l=32, mp=8, uniform and midtread
%test case3: fs=3Hz, meu=0, l=16, mp=8, uniform and midtread
%test case4: fs=4Hz, meu=255, l=32, mp=8, non-uniform and midtread

for i=1:length(Fs)
    Fs_I = Fs(i); 
    t = 0:(1/Fs_I):(1/Fm);
    InputSignal=Am*cos(2*pi*Fm*t); %Input signal
    UNI_I = UNI(i); 
    MR_I = MR(i);
    L_I = L(i);
    Mp_I = Mp(i);
    Meu_I = Meu(i);
    InputSignal(abs(InputSignal)<0.0000001) = 0;
    [Sampled_signal,MSE]=QNTZR(InputSignal,Meu_I,Mp_I,MR_I,L_I,UNI_I);
    
    figure(i);
    set(gcf,'Position',[0 0 800 600]);
    plot(t, InputSignal);
    hold on;
    stairs(t,Sampled_signal , 'red');
    hold off;
    
    legend('Input Signal', 'Quantized signal');
    grid on;
    str ={['MSE: ' num2str(MSE)]};
    dim = [0.7 0.2 0.1 0.1];
    annotation('textbox',dim,'String',str,'FitBoxToText','on', 'FontSize', 12, 'BackgroundColor', 'white', 'Color', 'red', 'FontWeight', 'bold');
    str ={['m(t)=' mat2str(InputSignal)]};
    dim = [0.7 0.25 0.1 0.1];
    annotation('textbox',dim,'String',str,'FitBoxToText','on', 'FontSize', 12, 'BackgroundColor', 'white', 'Color', 'red', 'FontWeight', 'bold');
    str ={['t=' mat2str(t)]};
    dim = [0.7 0.3 0.1 0.1];
    annotation('textbox',dim,'String',str,'FitBoxToText','on', 'FontSize', 12, 'BackgroundColor', 'white', 'Color', 'red', 'FontWeight', 'bold');
end