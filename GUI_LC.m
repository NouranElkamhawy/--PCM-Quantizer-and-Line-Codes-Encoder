function varargout = GUI_LC(varargin)
% GUI_LC MATLAB code for GUI_LC.fig
%      GUI_LC, by itself, creates a new GUI_LC or raises the existing
%      singleton*.
%
%      H = GUI_LC returns the handle to a new GUI_LC or the handle to
%      the existing singleton*.
%
%      GUI_LC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_LC.M with the given input arguments.
%
%      GUI_LC('Property','Value',...) creates a new GUI_LC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_LC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_LC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_LC

% Last Modified by GUIDE v2.5 08-Jan-2022 16:21:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_LC_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_LC_OutputFcn, ...
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


% --- Executes just before GUI_LC is made visible.
function GUI_LC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_LC (see VARARGIN)

% Choose default command line output for GUI_LC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_LC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_LC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Manchester.
function Manchester_Callback(hObject, eventdata, handles)
% hObject    handle to Manchester (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Manchester.Value=1;
handles.Polar_RZ.Value=0;
handles.Unipolar_NRZ.Value=0;
handles.AMI.Value=0;
% Hint: get(hObject,'Value') returns toggle state of Manchester


% --- Executes on button press in Polar_RZ.
function Polar_RZ_Callback(hObject, eventdata, handles)
% hObject    handle to Polar_RZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Manchester.Value=0;
handles.Polar_RZ.Value=1;
handles.Unipolar_NRZ.Value=0;
handles.AMI.Value=0;
% Hint: get(hObject,'Value') returns toggle state of Polar_RZ


% --- Executes on button press in Unipolar_NRZ.
function Unipolar_NRZ_Callback(hObject, eventdata, handles)
% hObject    handle to Unipolar_NRZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Manchester.Value=0;
handles.Polar_RZ.Value=0;
handles.Unipolar_NRZ.Value=1;
handles.AMI.Value=0;
% Hint: get(hObject,'Value') returns toggle state of Unipolar_NRZ


% --- Executes on button press in AMI.
function AMI_Callback(hObject, eventdata, handles)
% hObject    handle to AMI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Manchester.Value=0;
handles.Polar_RZ.Value=0;
handles.Unipolar_NRZ.Value=0;
handles.AMI.Value=1;
% Hint: get(hObject,'Value') returns toggle state of AMI



function BD_Callback(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BD as text
%        str2double(get(hObject,'String')) returns contents of BD as a double


% --- Executes during object creation, after setting all properties.
function BD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AMP_Callback(hObject, eventdata, handles)
% hObject    handle to AMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AMP as text
%        str2double(get(hObject,'String')) returns contents of AMP as a double


% --- Executes during object creation, after setting all properties.
function AMP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SOB_Callback(hObject, eventdata, handles)
% hObject    handle to SOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SOB as text
%        str2double(get(hObject,'String')) returns contents of SOB as a double


% --- Executes during object creation, after setting all properties.
function SOB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in RUN.



% --- Executes on button press in Yes.
function Yes_Callback(hObject, eventdata, handles)
% hObject    handle to Yes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Yes



function NOB_Callback(hObject, eventdata, handles)
% hObject    handle to NOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NOB as text
%        str2double(get(hObject,'String')) returns contents of NOB as a double


% --- Executes during object creation, after setting all properties.
function NOB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NOB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BD as text
%        str2double(get(hObject,'String')) returns contents of BD as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to AMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AMP as text
%        str2double(get(hObject,'String')) returns contents of AMP as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function RUN_Callback(hObject, eventdata, handles)
% hObject    handle to RUN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% hanMR = false;
  BD= eval(get(handles.BD,'String'));
     AMP = eval(get(handles.AMP,'String'));
      rand= get(handles.Yes,'Value');
if(rand)
    NOB=eval(get(handles.NOB,'String'));
    SOB=randi([0 1],1,NOB);
else
    SOB=eval(get(handles.SOB,'String'));
end
if(handles.Manchester.Value==1)
    [T,VAL]= Manchester_Signaling(SOB,BD,AMP);
elseif(handles.Polar_RZ.Value==1)
    [T,VAL]= Polar_RZ(SOB,BD,AMP);
elseif(handles.Unipolar_NRZ.Value==1)
    [T,VAL]= UniPolar_NRZ(SOB,BD,AMP);
elseif(handles.AMI.Value==1)
    [T,VAL]=Alternate_Mark_Inversion(SOB,BD,AMP);
end
%handles.Bits.Value=SOB;
set(handles.Bits, 'String', num2str(SOB));
axes(handles.axes1); 
disp(VAL)
stairs(T,VAL,'LineWidth',1);
hold off;
%legend('Original Signal', 'Quantized signal');
grid on;

function Bits_Callback(hObject, eventdata, handles)
% hObject    handle to Bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bits as text
%        str2double(get(hObject,'String')) returns contents of Bits as a double


% --- Executes during object creation, after setting all properties.
function Bits_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bits (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
