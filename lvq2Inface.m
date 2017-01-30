function varargout = lvq2Inface(varargin)
% LVQ2INFACE MATLAB code for lvq2Inface.fig
%      LVQ2INFACE, by itself, creates a new LVQ2INFACE or raises the existing
%      singleton*.
%
%      H = LVQ2INFACE returns the handle to a new LVQ2INFACE or the handle to
%      the existing singleton*.
%
%      LVQ2INFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LVQ2INFACE.M with the given input arguments.
%
%      LVQ2INFACE('Property','Value',...) creates a new LVQ2INFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lvq2Inface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lvq2Inface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lvq2Inface

% Last Modified by GUIDE v2.5 03-Nov-2015 18:42:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lvq2Inface_OpeningFcn, ...
                   'gui_OutputFcn',  @lvq2Inface_OutputFcn, ...
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


% --- Executes just before lvq2Inface is made visible.
function lvq2Inface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lvq2Inface (see VARARGIN)

% Choose default command line output for lvq2Inface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lvq2Inface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lvq2Inface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

b=imshow ('Resul.png');


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

clc;clear all;close all;lvq2;               %abro la ventana  lvq2

function pushbutton2_Callback(hObject, eventdata, handles)

      clc;clear all;close all;MiMenu;               %abro la ventana  menu
