function varargout = MiMenu(varargin)
% MIMENU MATLAB code for MiMenu.fig
%      MIMENU, by itself, creates a new MIMENU or raises the existing
%      singleton*.
%
%      H = MIMENU returns the handle to a new MIMENU or the handle to
%      the existing singleton*.
%
%      MIMENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MIMENU.M with the given input arguments.
%
%      MIMENU('Property','Value',...) creates a new MIMENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MiMenu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MiMenu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MiMenu

% Last Modified by GUIDE v2.5 03-Nov-2015 11:38:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MiMenu_OpeningFcn, ...
                   'gui_OutputFcn',  @MiMenu_OutputFcn, ...
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
% --- Executes just before MiMenu is made visible.
function MiMenu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MiMenu (see VARARGIN)

% Choose default command line output for MiMenu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
% UIWAIT makes MiMenu wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = MiMenu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)


n=get(hObject,'Value');             %obtengo  el  clicc del usuario
bus=get(hObject,'String');          %obtengo la opcion elegida
switch n                            %entro al case
  
    case 1
      clc;clear all;close all;Grafos;               %abro la ventana  Grafos
      
    case 2
        
       clc;clear all;close all;lvqInface;          %abro  la ventana  entrenalvq
       
    case 3
        
        clc;clear all;close all;lvq2Inface;               %abro la ventana  lvq2
        
    case 4
        
        clc;clear all;close all;Silacionefera3d;    %abro la  ventana   simulacion  esfera
        
    case 5
        
         clc;clear all;close all;Cdifusos;          %abro  la  ventana Cdifusos
        
      
end

function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)   %boton  volver

clc;clear all;close all;Ptencion;                            %abro  la ventana  presentacion

function pushbutton2_Callback(hObject, eventdata, handles)   %boton  salir 


clc;clear all;close all;                                     %cierro  procesos  para  salir  de  la  aplicación
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
