function varargout = Cdifusos(varargin)
% CDIFUSOS MATLAB code for Cdifusos.fig
%      CDIFUSOS, by itself, creates a new CDIFUSOS or raises the existing
%      singleton*.
%      H = CDIFUSOS returns the handle to a new CDIFUSOS or the handle to
%      the existing singleton*.
%      CDIFUSOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CDIFUSOS.M with the given input arguments.
%      CDIFUSOS('Property','Value',...) creates a new CDIFUSOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cdifusos_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cdifusos_OpeningFcn via varargin.
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
% See also: GUIDE, GUIDATA, GUIHANDLES
% Edit the above text to modify the response to help Cdifusos
% Last Modified by GUIDE v2.5 03-Nov-2015 08:46:14
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cdifusos_OpeningFcn, ...
                   'gui_OutputFcn',  @Cdifusos_OutputFcn, ...
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
% --- Executes just before Cdifusos is made visible.
function Cdifusos_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cdifusos (see VARARGIN)
% Choose default command line output for Cdifusos
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Cdifusos wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = Cdifusos_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

function slider6_Callback(hObject, eventdata, handles)

global valor6;                                          %declaro  la  variable

valor6=get(hObject, 'Value')                            %asigno  lo que  recibe  del slider
	str1=num2str(valor6)                                %convierto  la  variable a  un numero 
	set(handles.text8, 'String', str1)                 %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider6_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)

global valor7;                                          % %declaro  la  variable

valor7=get(hObject, 'Value')                            %%asigno  lo que  recibe  del slider
	str1=num2str(valor7)                                %convierto  la  variable a  un numero 
	set(handles.text9, 'String', str1)                  %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider8_Callback(hObject, eventdata, handles)
global valor8;                                         %declaro  la  variable

valor8=get(hObject, 'Value')                           %asigno  lo que  recibe  del slider
	str1=num2str(valor8)                               %convierto  la  variable a  un numero 
	set(handles.text10, 'String', str1)                %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider
function slider8_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider9_Callback(hObject, eventdata, handles)

global valor13;                                       %declaro  la  variable   

valor13=get(hObject, 'Value')                         %asigno  lo que  recibe  del slider
	str1=num2str(valor13)                             %convierto  la  variable a  un numero
	set(handles.text11, 'String', str1)               %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider9_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider10_Callback(hObject, eventdata, handles)

global valor9;                                        %declaro  la  variable  

valor9=get(hObject, 'Value')                          %asigno  lo que  recibe  del slider
	str1=num2str(valor9)                              %convierto  la  variable a  un numero 
	set(handles.text12, 'String', str1)               %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider       
function slider10_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider11_Callback(hObject, eventdata, handles)

global valor10;                                      %declaro  la  variable  

valor10=get(hObject, 'Value')                        %asigno  lo que  recibe  del slider
	str1=num2str(valor10)                            %convierto  la  variable a  un numero 
	set(handles.text13, 'String', str1)              %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider   

function slider11_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider12_Callback(hObject, eventdata, handles)

global valor11;                                      %declaro  la  variable

valor11=get(hObject, 'Value')                        %asigno  lo que  recibe  del slider
	str1=num2str(valor11)                            %convierto  la  variable a  un numero 
	set(handles.text14, 'String', str1)              %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider12_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider1_Callback(hObject, eventdata, handles)

global valor1;                                           %declaro  la  variable
valor1=get(hObject, 'Value')                             %asigno  lo que  recibe  del slider
	str1=num2str(valor1)                                 %convierto  la  variable a  un numero     
	set(handles.text17, 'String', str1)                  %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider1_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider2_Callback(hObject, eventdata, handles)

global valor2;                                          %declaro  la  variable
valor2=get(hObject, 'Value')                            %asigno  lo que  recibe  del slider
	str1=num2str(valor2)                                %convierto  la  variable a  un numero  
	set(handles.text18, 'String', str1)                 %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider2_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider3_Callback(hObject, eventdata, handles)

global valor3;                                          %declaro  la  variable
valor3=get(hObject, 'Value')                            %asigno  lo que  recibe  del slider
	str1=num2str(valor3)                                %convierto  la  variable a  un numero 
	set(handles.text19, 'String', str1)                 %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider3_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider4_Callback(hObject, eventdata, handles)

global valor4;                                          %declaro  la  variable

valor4=get(hObject, 'Value')                            %asigno  lo que  recibe  del slider
	str1=num2str(valor4)                                %convierto  la  variable a  un numero
	set(handles.text20, 'String', str1)                 %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider4_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider5_Callback(hObject, eventdata, handles)

global valor5;                                           %declaro  la  variable

valor5=get(hObject, 'Value')                             %asigno  lo que  recibe  del slider
	str1=num2str(valor5)                                 %convierto  la  variable a  un numero
	set(handles.text21, 'String', str1)                  %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider


function slider5_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function pushbutton1_Callback(hObject, eventdata, handles)
%declaracion  de variables:
global valor1;
global valor2;
global valor3;
global valor4;
global valor5;
global valor6;
global valor7;
global valor8;
global valor13;
global valor9;
global valor10;
global valor11;
global valor14;
global valor15;
%%
%creacion de vectores
x=[valor1,valor2,valor3,valor4,valor5,valor14,valor15];

y=[valor6,valor7,valor8,valor13,valor9,valor10,valor11];
%%
%declaro  la  matriz  y  aplico el algoritmo:
z=[x; y]';
fcmdemo
%%

function slider13_Callback(hObject, eventdata, handles)

global valor14;                                          %declaro  la  variable

valor14=get(hObject, 'Value')                            %asigno  lo que  recibe  del slider
	str1=num2str(valor14)                                %convierto  la  variable a  un numero 
	set(handles.text22, 'String', str1)                  %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider

function slider13_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function slider14_Callback(hObject, eventdata, handles)

global valor15;                                         %declaro  la  variable

valor15=get(hObject, 'Value')                           %asigno  lo que  recibe  del slider
	str1=num2str(valor15)                               %convierto  la  variable a  un numero 
	set(handles.text23, 'String', str1)                 %a  la  etiqueta  le  asigno  el  valor  numerico  obtenido del slider
function slider14_CreateFcn(hObject, eventdata, handles)

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function pushbutton2_Callback(hObject, eventdata, handles)
%declaracion de variables:
global valor1;
global valor2;
global valor3;
global valor4;
global valor5;
global valor6;
global valor7;
global valor8;
global valor13;
global valor9;
global valor10;
global valor11;
global valor14;
global valor15;
%ceracion de vectores:
x=[valor1,valor2,valor3,valor4,valor5,valor14,valor15];

y=[valor6,valor7,valor8,valor13,valor9,valor10,valor11];

%%
%aplicacion  del  algoritmo:
x1=x+7;
y1=y.*2;
x2=x1+7;
y2=y.*(-2);
x=[x;x1;x2];
y=[y; y1; y2];
X=[x,y];
[v]=subclust(X, .7);
figure
plot(X(:,1),X(:,2),'p');
hold on;plot(v(:,1),v(:,2),'rs');
xlabel('x'),ylabel('y')
title ('Grupos próximos')
set(gcf,'color','w')
%%

function pushbutton5_Callback(hObject, eventdata, handles)

global valor1;
global valor2;
global valor3;
global valor4;
global valor5;
global valor6;
global valor7;
global valor8;
global valor13;
global valor9;
global valor10;
global valor11;
global valor14;
global valor15;

x=[valor1,valor2,valor3,valor4,valor5,valor14,valor15]';

y=[valor6,valor7,valor8,valor13,valor9,valor10,valor11]';

x1=x+7;
y1=y.*2;
x2=x1+7;
y2=y.*(-2);
x=[x;x1;x2];
y=[y; y1; y2];
X=[x,y];
[v]=subclust(X, .7);
figure
plot(X(:,1),X(:,2),'p');
hold on;plot(v(:,1),v(:,2),'rs');
xlabel('x'),ylabel('y')
title ('Grupos próximos')
set(gcf,'color','w')

function Menu_Callback(hObject, eventdata, handles)
clc;clear all;close all;MiMenu;
%%
%TALLER
%FABIAN  RENE  SOCHA  BARBÓN
%EDGAR  ANDRES  ABELLA  MORA
%ASIGNATURA: INTELIGENCIA  ARTIFICIAL
%PRESENTADO AL  PROFESOR:Ms. Ingeniero  Jairo E. Márquez D.
%NOVIEMBRE 2015
%INGENIERÍA  DE  SISTEMAS
%UNIVERSIDAD  DE  CUNDINAMARCA  CHÍA
%%
