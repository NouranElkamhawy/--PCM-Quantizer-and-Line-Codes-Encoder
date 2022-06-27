function varargout = GUI1(varargin)
% GUI1 MATLAB code for GUI1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI1

% Last Modified by GUIDE v2.5 06-Jan-2022 04:10:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI1 is made visible.
function GUI1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI1 (see VARARGIN)

% Choose default command line output for GUI1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function t_TEXT_Callback(hObject, eventdata, handles)
% hObject    handle to t_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_TEXT as text
%        str2double(get(hObject,'String')) returns contents of t_TEXT as a double


% --- Executes during object creation, after setting all properties.
function t_TEXT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in U.
function U_Callback(hObject, eventdata, handles)
% hObject    handle to U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles=guidata(hObject);
handles.NU.Value=~handles.U.Value;
if(get(hObject,'Value'))
    handles.MR_N_U.Value=0;
    handles.MT_N_U.Value=0;
else
    handles.MR_U.Value=0;
    handles.MT_U.Value=0;
end
% Hint: get(hObject,'Value') returns toggle state of U


% --- Executes on button press in NU.
function NU_Callback(hObject, eventdata, handles)
% hObject    handle to NU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.U.Value=~handles.NU.Value;
% Hint: get(hObject,'Value') returns toggle state of NU
if(get(hObject,'Value'))
    handles.MR_U.Value=0;
    handles.MT_U.Value=0;
else
    handles.MR_N_U.Value=0;
    handles.MT_N_U.Value=0;
end

function m_TEXT_Callback(hObject, eventdata, handles)
% hObject    handle to m_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_TEXT as text
%        str2double(get(hObject,'String')) returns contents of m_TEXT as a double


% --- Executes during object creation, after setting all properties.
function m_TEXT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RUN.


% --- Executes on button press in MSE.
function MSE_Callback(hObject, eventdata, handles)
% hObject    handle to MSE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function MSE_TEXT_Callback(hObject, eventdata, handles)
% hObject    handle to MSE_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MSE_TEXT as text
%        str2double(get(hObject,'String')) returns contents of MSE_TEXT as a double


% --- Executes during object creation, after setting all properties.
function MSE_TEXT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MSE_TEXT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in MT_N_U.
function MT_N_U_Callback(hObject, eventdata, handles)
% hObject    handle to MT_N_U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.MR_N_U.Value=~handles.MT_N_U.Value;
% Hint: get(hObject,'Value') returns toggle state of MT_N_U


% --- Executes on button press in MR_N_U.
function MR_N_U_Callback(hObject, eventdata, handles)
% hObject    handle to MR_N_U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.MT_N_U.Value=~handles.MR_N_U.Value;
% Hint: get(hObject,'Value') returns toggle state of MR_N_U



function N_U_Mp_Callback(hObject, eventdata, handles)
% hObject    handle to N_U_Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_U_Mp as text
%        str2double(get(hObject,'String')) returns contents of N_U_Mp as a double


% --- Executes during object creation, after setting all properties.
function N_U_Mp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_U_Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_U_L_Callback(hObject, eventdata, handles)
% hObject    handle to N_U_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_U_L as text
%        str2double(get(hObject,'String')) returns contents of N_U_L as a double


% --- Executes during object creation, after setting all properties.
function N_U_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_U_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_U_MEU_Callback(hObject, eventdata, handles)
% hObject    handle to N_U_MEU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_U_MEU as text
%        str2double(get(hObject,'String')) returns contents of N_U_MEU as a double


% --- Executes during object creation, after setting all properties.
function N_U_MEU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_U_MEU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in MR_U.
function MR_U_Callback(hObject, eventdata, handles)
% hObject    handle to MR_U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.MT_U.Value=~handles.MR_U.Value;
% Hint: get(hObject,'Value') returns toggle state of MR_U



function U_L_Callback(hObject, eventdata, handles)
% hObject    handle to U_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U_L as text
%        str2double(get(hObject,'String')) returns contents of U_L as a double


% --- Executes during object creation, after setting all properties.
function U_L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to U_L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function U_Mp_Callback(hObject, eventdata, handles)
% hObject    handle to U_Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U_Mp as text
%        str2double(get(hObject,'String')) returns contents of U_Mp as a double


% --- Executes during object creation, after setting all properties.
function U_Mp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to U_Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in MT_U.
function MT_U_Callback(hObject, eventdata, handles)
% hObject    handle to MT_U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.MR_U.Value=~handles.MT_U.Value;
% Hint: get(hObject,'Value') returns toggle state of MT_U
function RUN_Callback(hObject, eventdata, handles)
% hObject    handle to RUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

MR = false;
Meu = 0;
T = eval(get(handles.t_TEXT,'String'));
M = eval(get(handles.m_TEXT,'String'));
%if (T.size!=M.size)
if(get(handles.U,'Value') == 1)
    UNI = true;
else
    UNI = false;
end

if(UNI)
 
    Mp = eval(get(handles.U_Mp,'String'));
    L = eval(get(handles.U_L,'String'));
    if(get(handles.MR_U,'Value') == 1)
        MR = true;
    end
else
    Meu = eval(get(handles.N_U_MEU,'String'));
     Mp = eval(get(handles.N_U_Mp,'String'));
      L = eval(get(handles.N_U_L,'String'));
    if(get(handles.MR_N_U,'Value') == 1)
        MR = true;
    end
end
[Samp.Sig,MSE] = QNTZR(M,Meu,Mp,MR,L,UNI);
axes(handles.axes1); 
disp(Samp.Sig);
plot(T,M,'LineWidth',1);
hold on;
stairs(T,Samp.Sig,'LineWidth',1);
hold off;
legend('Original Signal', 'Quantized signal');
grid on;
set(handles.MSE_TEXT, 'String', num2str(MSE));
