function varargout = Silacionefera3d(varargin)
% SILACIONEFERA3D MATLAB code for Silacionefera3d.fig
%      SILACIONEFERA3D, by itself, creates a new SILACIONEFERA3D or raises the existing
%      singleton*.
%
%      H = SILACIONEFERA3D returns the handle to a new SILACIONEFERA3D or the handle to
%      the existing singleton*.
%
%      SILACIONEFERA3D('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SILACIONEFERA3D.M with the given input arguments.
%
%      SILACIONEFERA3D('Property','Value',...) creates a new SILACIONEFERA3D or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Silacionefera3d_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Silacionefera3d_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Silacionefera3d

% Last Modified by GUIDE v2.5 05-Nov-2015 19:02:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Silacionefera3d_OpeningFcn, ...
                   'gui_OutputFcn',  @Silacionefera3d_OutputFcn, ...
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

function Silacionefera3d_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Silacionefera3d (see VARARGIN)
% Choose default command line output for Silacionefera3d
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);
% UIWAIT makes Silacionefera3d wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% --- Outputs from this function are returned to the command line.
function varargout = Silacionefera3d_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)

set(handles.axes1,'Visible','on');                                           %ESTABLEZCO  VISIBLE EL AXES
axes(handles.axes1);                                                         %en el axes1

a = get(handles.edit1,'String');                                             %captura  el dato  que  se  digita en el text
 A11 = str2double(a);                                                        %convierto el text en un número
 %%
 %aplicacion  del  algoritmo:
 key=1; % 1-Esfera 2-Cono 3-Cilindro
switch key
case 1
%==========esfera========
A11=2000;
theta = 2*pi*rand(1,A11);
phi = asin(2*rand(1,A11)-1);
[x,y,z]=sph2cart(theta,phi,ones(1,A11));
%=======================
case 2
%=========cono==========
A=rand(3,1000);
H= 1;
R= 1;
h= H.*A(1,1:end);
H= H* ones(size(h));
R= R* ones(size(h));
r= (R/H).*(H-h);
P= (2*pi).*A(2,1:end);
x= r.*cos(P);
y= r.*sin(P);
z=h;
%=======================
case 3
%=========cilindro======

A=rand(2,1000);
R= 1;
H= 1;
P=(2*pi).*A(1,1:end);
x= R.*cos(P);
y= R.*sin(P);
z= H.*A(2,1:end);
%=======================
end
x1=x;
x2=y;
x3=z;
for j1=1:10
for j2=1:10
w1(j1,j2)=rand*(0.52-0.48)+0.48;
w2(j1,j2)=rand*(0.52-0.48)+0.48;
w3(j1,j2)=rand*(0.52-0.48)+0.48;
end
end
vv=1;
%=====================
no=1;
do=5;
T=300;
t=1;
while (t<=T)
n=no*(1-t/T);
d=round(do*(1-t/T));
%loop para las 1000 entradas
for i=1:1000
e_norm=(x1(i)-w1).^2+(x2(i)-w2).^2+(x3(i)-w3).^2;
minj1=1;minj2=1;
min_norm=e_norm(minj1,minj2);
for j1=1:10
for j2=1:10
if e_norm(j1,j2)<min_norm
min_norm=e_norm(j1,j2);
minj1=j1;
minj2=j2;
end
end
end
j1star= minj1;
j2star= minj2;
% Se actualiza la neurona ganadora
w1(j1star,j2star)=w1(j1star,j2star)+n*(x1(i)-w1(j1star,j2star));
w2(j1star,j2star)=w2(j1star,j2star)+n*(x2(i)-w2(j1star,j2star));
w3(j1star,j2star)=w3(j1star,j2star)+n*(x3(i)-w3(j1star,j2star));
%Se actualizan las neuronas vecinas
for dd=1:1:d
jj1=j1star-dd;
jj2=j2star;
if (jj1>=1)
w1(jj1,jj2)=w1(jj1,jj2)+n*(x1(i)-w1(jj1,jj2));
w2(jj1,jj2)=w2(jj1,jj2)+n*(x2(i)-w2(jj1,jj2));
w3(jj1,jj2)=w3(jj1,jj2)+n*(x3(i)-w3(jj1,jj2));
end
jj1=j1star+dd;
jj2=j2star;
if (jj1<=10)
w1(jj1,jj2)=w1(jj1,jj2)+n*(x1(i)-w1(jj1,jj2));
w2(jj1,jj2)=w2(jj1,jj2)+n*(x2(i)-w2(jj1,jj2));
w3(jj1,jj2)=w3(jj1,jj2)+n*(x3(i)-w3(jj1,jj2));
end
jj1=j1star;
jj2=j2star-dd;
if (jj2>=1)
w1(jj1,jj2)=w1(jj1,jj2)+n*(x1(i)-w1(jj1,jj2));
w2(jj1,jj2)=w2(jj1,jj2)+n*(x2(i)-w2(jj1,jj2));
w3(jj1,jj2)=w3(jj1,jj2)+n*(x3(i)-w3(jj1,jj2));
end
jj1=j1star;
jj2=j2star+dd;
if (jj2<=10)
w1(jj1,jj2)=w1(jj1,jj2)+n*(x1(i)-w1(jj1,jj2));
w2(jj1,jj2)=w2(jj1,jj2)+n*(x2(i)-w2(jj1,jj2));
w3(jj1,jj2)=w3(jj1,jj2)+n*(x3(i)-w3(jj1,jj2));
end
end
end
t=t+1;
%======Se procede a inicializar la graficación======
 set(handles.axes1,'Visible','on');                                           %ESTABLEZCO  VISIBLE EL AXES
axes(handles.axes1);  
 
plot3(x1,x2,x3,'.b')

plot3(w1,w2,w3,'or')
surf(w1,w2,w3,'FaceColor','interp',...
'EdgeColor','k',...
'FaceLighting','phong','linewidth',2)
axis square
view(vv,35)
vv=vv+1;
camlight left
hold off
title(['t=' num2str(t)])
drawnow
%=====================
end
for zz=1:200
% Se inicia de nuevo el proceso de trazado de la figura geometrica
 set(handles.axes1,'Visible','on');                                           %ESTABLEZCO  VISIBLE EL AXES
axes(handles.axes1);  
 
plot3(x1,x2,x3,'.b')
plot3(w1,w2,w3,'or')
surf(w1,w2,w3,'FaceColor','interp',...
'EdgeColor','k',...
'FaceLighting','phong','linewidth',2)
% axis square
view(vv,35)
vv=vv+1;
camlight left
title(['t=' num2str(t)])
drawnow
%=====================
end

function pushbutton2_Callback(hObject, eventdata, handles)

function pushbutton3_Callback(hObject, eventdata, handles)

clc;clear all;close all;MiMenu;                                 %llamo  a la  ventana  menu
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
