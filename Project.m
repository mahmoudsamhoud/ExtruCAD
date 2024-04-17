function varargout = Project(varargin)
% PROJECT MATLAB code for Project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project

% Last Modified by GUIDE v2.5 22-Apr-2022 05:38:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project_OpeningFcn, ...
                   'gui_OutputFcn',  @Project_OutputFcn, ...
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


% --- Executes just before Project is made visible.
function Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project (see VARARGIN)

% Choose default command line output for Project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
val=get(handles.popupmenu1,'value');
str=get(handles.popupmenu1,'string');
switch str{val};
    case 'SELECT TYPE'
        cla(handles.axes1,'reset');
        cla(handles.axes2,'reset');
        set(handles.pushbutton9,'enable','off')
        
        set(handles.edit3,'enable','off');
        set(handles.edit4,'enable','off');
        set(handles.edit5,'enable','off');
        set(handles.edit6,'enable','off');
        set(handles.edit7,'enable','off');
        set(handles.edit8,'enable','off');
    case 'CAN'
        cla(handles.axes2,'reset');
        a=imread('CAN.jpg');
        axes(handles.axes1);
        imshow(a);
        
        set(handles.edit3,'enable','on');
        set(handles.edit4,'enable','on');
        set(handles.edit5,'enable','on');
        set(handles.edit6,'enable','on');

        set(handles.edit7,'enable','off');
        set(handles.edit8,'enable','off');
        
        set(handles.pushbutton9,'enable','on')
        
    case 'CAN CAN' 
        cla(handles.axes2,'reset');
        b=imread('CAN_CAN.jpg');
        axes(handles.axes1);
        imshow(b);
    
        set(handles.edit3,'enable','on');
        set(handles.edit4,'enable','on');
        set(handles.edit5,'enable','on');
        set(handles.edit6,'enable','on');
        set(handles.edit7,'enable','on');
        set(handles.edit8,'enable','on');
        
        set(handles.pushbutton9,'enable','on')
        
    case 'ROD'
        cla(handles.axes2,'reset');
        c=imread('ROD.jpg');
        axes(handles.axes1);
        imshow(c);
        
        set(handles.edit3,'enable','on');
        set(handles.edit6,'enable','on');
        set(handles.edit7,'enable','on');
        set(handles.edit8,'enable','on');
        
        set(handles.edit4,'enable','off');
        set(handles.edit5,'enable','off');
        
        set(handles.pushbutton9,'enable','on')

    case 'ROD ROD'
        cla(handles.axes2,'reset');
        d=imread('ROD_ROD.jpg');
        axes(handles.axes1);
        imshow(d);
        
        set(handles.edit3,'enable','on');
        set(handles.edit4,'enable','on');
        set(handles.edit5,'enable','on');
        set(handles.edit6,'enable','on');
        set(handles.edit7,'enable','on');
        set(handles.edit8,'enable','on');
        
        set(handles.pushbutton9,'enable','on')
        
end

% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% Material Properties
%Al 99.5 - 99.8 (M1)
stress=[0 90	105	122	134	143	150	156	162	166	171	175	182	185	188	191	194	196	200	202	204	210	214];
strain=[0 0.1	0.2	0.4	0.6	0.8	1	1.2	1.4	1.6	1.8	2	2.4	2.6	2.8	3	3.2	3.4	3.6	3.8	4	4.5	5];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k1=fitresult.a; n1=fitresult.b; FPS1=3.9 ; BPS1=4.5;

%AlMgSi 1 (M2)
stress=[0 165 189 217 235 249 260 270 278 285 292 298 309 314 318 323 327 331 335 338 342];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2 2.4 2.6 2.8 3 3.2 3.4 3.6 3.8 4];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k2=fitresult.a; n2=fitresult.b; FPS2=3; BPS2=3.5;

%CuZn 37 (Ms63) (M3)
stress=[0 325 438 592 706 799 880 952 1018 1078	1134 1188 ];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k3=fitresult.a; n3=fitresult.b; FPS3=1.2; BPS3=1.1;

%Ck10 (M4)
stress=[0 450 523 607 663 706 740 770 796 819];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k4=fitresult.a; n4=fitresult.b; FPS4=1.2; BPS4=1.1;

%Ck15 (M5)
stress=[0 520 583	654	700	733	760	783	803	821];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k5=fitresult.a; n5=fitresult.b; FPS5=1.2; BPS5=1.1;

%Ck 45 / Cq 45 (M6)
stress=[0 680	764	858	918	963	1000	1031	1058	1082];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k6=fitresult.a; n6=fitresult.b; FPS6=0.8; BPS6=0.9;

%Cq 22 (M7)
stress=[0 530	591	658	702	734	760	782	801	818];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k7=fitresult.a; n7=fitresult.b; FPS7=0.9; BPS7=1.1;

%Cq 35 (M8)
stress=[0 630	713	807	867	913	950	982	1008 1033];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k8=fitresult.a; n8=fitresult.b; FPS8=0.9; BPS8=1.1;

%16 MnCr 5 (M9)
stress=[0 630	702	780	832	869	900	926	948	968];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k9=fitresult.a; n9=fitresult.b; FPS9=0.8; BPS9=0.9;

%42 CrMO 4 (M10)
stress=[0 780	865	959	1019	1064	1100	1130	1156	1180];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k10=fitresult.a; n10=fitresult.b; FPS10=0.7; BPS10=0.8;

%15 CrNi 6 (M11)
stress=[0 700	767	841	888	922	950	973	993	1011];
strain=[0 0.1 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6];
strainft=strain(1,2:10); stressft=stress(1,2:10);[xData, yData] = prepareCurveData( strainft, stressft );ft = fittype( 'power1' );opts = fitoptions( 'Method', 'NonlinearLeastSquares' );[fitresult, gof] = fit( xData, yData, ft, opts );
k11=fitresult.a; n11=fitresult.b; FPS11=0.7; BPS11=0.8;

M1 = [ k1 n1 FPS1 BPS1 ];
M2 = [ k2 n2 FPS2 BPS2 ];
M3 = [ k3 n3 FPS3 BPS3 ];
M4 = [ k4 n4 FPS4 BPS4 ];
M5 = [ k5 n5 FPS5 BPS5 ];
M6 = [ k6 n6 FPS6 BPS6 ];
M7 = [ k7 n7 FPS7 BPS7 ];
M8 = [ k8 n8 FPS8 BPS8 ];
M9 = [ k9 n9 FPS9 BPS9 ];
M10 = [ k10 n10 FPS10 BPS10 ];
M11 = [ k11 n11 FPS11 BPS11 ];
global k; global n; global FPS; global BPS; % FPS [Forward Permissible Strain] /  BPS [Backward Permissible Strain]
val=get(handles.popupmenu2,'value');
str=get(handles.popupmenu2,'string');
switch str{val};
    case 'Al 99.8'
        k = M1 (1,1);
        n = M1 (1,2);
        FPS = M1 (1,3);
        BPS = M1 (1,4);
    case 'AlMgSi 1'    
        k = M2 (1,1);
        n = M2 (1,2);
        FPS = M2 (1,3);
        BPS = M2 (1,4);
    case 'CuZn 37 (Ms63)'
        k = M3 (1,1);
        n = M3 (1,2);
        FPS = M3 (1,3);
        BPS = M3 (1,4);
    case 'Ck10'
        k = M4 (1,1);
        n = M4 (1,2);
        FPS = M4 (1,3);
        BPS = M4 (1,4);
    case 'Cq 15/Ck 15 [AISI 1015]'
        k = M5 (1,1);
        n = M5 (1,2);
        FPS = M5 (1,3);
        BPS = M5 (1,4);    
    case 'Ck 45 / Cq 45'
        k = M6 (1,1);
        n = M6 (1,2);
        FPS = M6 (1,3);
        BPS = M6 (1,4);
    case 'Cq 22'
        k = M7 (1,1);
        n = M7 (1,2);
        FPS = M7 (1,3);
        BPS = M7 (1,4);
    case 'Cq 35'
        k = M8 (1,1);
        n = M8 (1,2);
        FPS = M8 (1,3);
        BPS = M8 (1,4);   
    case '16 MnCr 5'
        k = M9 (1,1);
        n = M9 (1,2);
        FPS = M9 (1,3);
        BPS = M9 (1,4);   
    case '42 CrMO 4'
        k = M10 (1,1);
        n = M10 (1,2);
        FPS = M10 (1,3);
        BPS = M10 (1,4);   
    case '15 CrNi 6'
        k = M11 (1,1);
        n = M11 (1,2);
        FPS = M1 (1,3);
        BPS = M11 (1,4);   
end
set(handles.pushbutton3,'enable','on')

% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
val=get(handles.popupmenu1,'value');
str=get(handles.popupmenu1,'string');
switch str{val};
    case 'CAN'
        a=imread('CAN_DA.jpg');
        axes(handles.axes2);
        imshow(a);
    case 'CAN CAN'    
        b=imread('CAN_CAN_DA.jpg');
        axes(handles.axes2);
        imshow(b);
    case 'ROD'
        c=imread('ROD_DA.jpg');
        axes(handles.axes2);
        imshow(c);

    case 'ROD ROD'
        d=imread('ROD_ROD_DA.jpg');
        axes(handles.axes2);
        imshow(d);
end
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global k;global n;global FPS;global BPS;
global a; global b; global c; global d; global e; global f;
a = str2double(get(handles.edit3,'string'));
b = str2double(get(handles.edit4,'string'));
c = str2double(get(handles.edit5,'string'));
d = str2double(get(handles.edit6,'string'));
e = str2double(get(handles.edit7,'string'));
f = str2double(get(handles.edit8,'string'));
set(handles.edit1,'string',num2str(k));
set(handles.edit2,'string',num2str(n));
val=get(handles.popupmenu1,'value');
str=get(handles.popupmenu1,'string');
switch str{val};
    case 'CAN'
        V=(pi/4)*a^2*(c+d)-(pi/4)*b^2*c;
        H=V/((pi/4)*a^2);
        s=(a-b)/2;    %s [Product Extruded Thickness] 
        if a/s <= 10
            CBS=log(b^2/(a^2-b^2)); %CBS [Strain Calculated From Backward Extrusion]
            if CBS < BPS && CBS>0 %BPS [Backward Permissible Strain]
                if CBS <= 0.4 && CBS > 0
                    eta=0.52; %eta [Effeciency]
                elseif  CBS > 0.4 && CBS <= 1.2
                    eta=0.55;
                elseif  CBS > 1.2 && CBS <= 1.8
                    eta=0.56;
                elseif  CBS > 1.8 
                    eta=0.58;
                end
                   BMFS=(k*(CBS^n))/(1+n); %BMFS [mean flow stress calculated from backward strain]
                   BF=((pi/4)*b^2*BMFS*CBS)/eta; %BF [Backward Extrusion Force]
                 
            elseif CBS > BPS
                msgbox('The calculated strain is higher than the permissible strain');
            else 
                msgbox('The calculated strain value is invalid ');
            return;
            end
        else
            CBS=log(b/(a-b))-0.16;
            if CBS < BPS && CBS>0
                if CBS <= 0.4 && CBS > 0
                    eta=0.52; %eta [Effeciency]
                elseif  CBS > 0.4 && CBS <= 1.2
                    eta=0.55;
                elseif  CBS > 1.2 && CBS <= 1.8
                    eta=0.56;
                elseif  CBS > 1.8 
                    eta=0.58;
                end
                   BMFS=(k*(CBS^n))/(1+n);
                   BF=(((pi/4)*b^2*BMFS)/eta)*(2+0.25*(H/s));
            elseif CBS > BPS
                msgbox('The calculated strain is higher than the permissible strain');
            else 
                msgbox('The calculated strain value is invalid ');
            return;
            end
        end
        Ff=0;
        F=BF;
        C=F/(1000*9.81);
        
        if isreal(Ff) == 0 || isreal(BF)== 0
         msgbox('Wrong dimensions');
        else 
            set(handles.edit11,'string',num2str(Ff));
            set(handles.edit12,'string',num2str(BF));
            set(handles.edit13,'string',num2str(C));
            set(handles.edit14,'string',num2str(a));
            set(handles.edit15,'string',num2str(H));
        end
        
    case 'CAN CAN'
        V=(pi/4)*a^2*(c+d+e)-(pi/4)*b^2*c-(pi/4)*f^2*e;
        H=V/((pi/4)*a^2);
        s=(a-b)/2; %Can Backward
        if a/s < 10
            CBS=log(b^2/(a^2-b^2));
                eta=0.7;
            if CBS < BPS && CBS>0
               BMFS=(k*(CBS^n))/(1+n);
               BF=((pi/4)*b^2*BMFS*CBS)/eta;
           elseif CBS > BPS
                msgbox('The calculated backward strain is higher than the permissible strain');
            else 
                msgbox('The calculated backward strain value is invalid ');
            return;
            end
        else
            CBS=log(b/(a-b))-0.16;
                 eta=0.7;
            if  CBS < BPS && CBS>0
                BMFS=(k*(CBS^n))/(1+n);
                BF=(((pi/4)*b^2*BMFS)/eta)*(2+0.25*(H/s));
            elseif CBS > BPS
                msgbox('The calculated backward strain is higher than the permissible strain');
            else 
                msgbox('The calculated backward strain value is invalid ');
            return;
            end
        end

        CFS=log(a^2/(a^2-f^2)); %Can Forward
           eta=0.7;
        if CFS < FPS && CFS>0 
           FMFS=(k*(CFS^n))/(1+n);
           Ff=((pi/4)*b^2*FMFS*CFS)/eta;
        elseif CFS > FPS
                msgbox('The calculated forward strain is higher than the permissible strain');
            else 
                msgbox('The calculated forward strain value is invalid ');
        return;
        end
        if BF>Ff
           F=BF;
        else
           F=Ff;
        end
        if isreal(Ff) == 0 || isreal(BF)== 0
            msgbox('Wrong dimensions');
        else
            C=F/(1000*9.81);
            set(handles.edit11,'string',num2str(Ff));
            set(handles.edit12,'string',num2str(BF));
            set(handles.edit13,'string',num2str(C));
            set(handles.edit14,'string',num2str(a));
            set(handles.edit15,'string',num2str(H));
        end

    case 'ROD'
        V=(pi/4)*a^2*d+(pi/4)*f^2*e;
        H=V/((pi/4)*a^2);
                CFS=log(a^2/(f^2)); %Rod Forward
         if CFS < FPS && CFS>0
            if CFS <= 0.6
                eta=0.55; %eta [Effeciency]
            elseif  CFS > 0.6 && CFS <= 1
                eta=0.6;
            elseif  CFS > 1 && CFS <= 1.6
                eta=0.65;
            elseif  CFS > 1.6
                eta=0.7;
            end
            FMFS=(k*(CFS^n))/(1+n);
            Ff=((pi/4)*(a^2-b^2)*FMFS*CFS)/eta;
         elseif CFS > FPS
                msgbox('The calculated strain is higher than the permissible strain');
            else 
                msgbox('The calculated strain value is invalid ');
        return;
        end
        BF=0;
        F=Ff;
        if isreal(Ff) == 0 || isreal(BF)== 0
            msgbox('Wrong dimensions');
        else
            C=F/(1000*9.81);
            set(handles.edit11,'string',num2str(Ff));
            set(handles.edit12,'string',num2str(BF));
            set(handles.edit13,'string',num2str(C));
            set(handles.edit14,'string',num2str(a));
            set(handles.edit15,'string',num2str(H));
        end

    case 'ROD ROD'
        V=(pi/4)*a^2*d+(pi/4)*b^2*c+(pi/4)*f^2*e;
        H=V/((pi/4)*a^2);
        CBS=log((a^2-b^2)/b^2); %Rod Backward
           eta=0.7;
        if CBS < BPS && CBS>0 
           BMFS=(k*(CBS^n))/(1+n);
           BF=((pi/4)*(a^2-b^2)*BMFS*CBS)/eta;
       elseif CBS > BPS
           msgbox('The calculated backward strain is higher than the permissible strain');
            else 
           msgbox('The calculated backward strain value is invalid ');
        return;
        end
        CFS=log(a^2/(f^2)); %Rod Forward
           eta=0.7;
        if CFS < FPS && CFS>0
        FMFS=(k*(CFS^n))/(1+n);
        Ff=((pi/4)*(a^2-b^2)*FMFS*CFS)/eta;
        elseif CFS > FPS
            msgbox('The calculated forward strain is higher than the permissible strain');
        else 
            msgbox('The calculated forward strain value is invalid ');
        return;
        end
        if BF>Ff
        F=BF;
        else
        F=Ff;
        end
        if isreal(Ff) == 0 || isreal(BF)== 0
            msgbox('Wrong dimensions');
        else
            C=F/(1000*9.81);
            set(handles.edit11,'string',num2str(Ff));
            set(handles.edit12,'string',num2str(BF));
            set(handles.edit13,'string',num2str(C));
            set(handles.edit14,'string',num2str(a));
            set(handles.edit15,'string',num2str(H));
        end
       
end


% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.edit1,'string',num2str(0))
set(handles.edit2,'string',num2str(0))
set(handles.edit11,'string',num2str(0))
set(handles.edit12,'string',num2str(0))
set(handles.edit13,'string',num2str(0))
set(handles.edit14,'string',num2str(0))
set(handles.edit15,'string',num2str(0))
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
set(handles.edit3,'string',num2str(0))
set(handles.edit4,'string',num2str(0))
set(handles.edit5,'string',num2str(0))
set(handles.edit6,'string',num2str(0))
set(handles.edit7,'string',num2str(0))
set(handles.edit8,'string',num2str(0))
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
close
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
a = get(handles.togglebutton1,'value');
if a == 1 
    val=get(handles.popupmenu1,'value');
    str=get(handles.popupmenu1,'string');
    switch str{val};
        case 'CAN'
            a=imread('CAN_DA.jpg');
            axes(handles.axes2);
            imshow(a);
        case 'CAN CAN'    
            b=imread('CAN_CAN_DA.jpg');
            axes(handles.axes2);
            imshow(b);
        case 'ROD'
            c=imread('ROD_DA.jpg');
            axes(handles.axes2);
            imshow(c);

        case 'ROD ROD'
            d=imread('ROD_ROD_DA.jpg');
            axes(handles.axes2);
            imshow(d);
    end
else
 cla(handles.axes2,'reset');
end
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
val=get(handles.popupmenu1,'value');
    str=get(handles.popupmenu1,'string');
    switch str{val};
        case 'CAN'
            a=imread('CAN_DA.jpg');
            axes(handles.axes2);
            imshow(a);
        case 'CAN CAN'    
            b=imread('CAN_CAN_DA.jpg');
            axes(handles.axes2);
            imshow(b);
        case 'ROD'
            c=imread('ROD_DA.jpg');
            axes(handles.axes2);
            imshow(c);

        case 'ROD ROD'
            d=imread('ROD_ROD_DA.jpg');
            axes(handles.axes2);
            imshow(d);
    end
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
val=get(handles.popupmenu1,'value');
    str=get(handles.popupmenu1,'string');
    switch str{val};
        case 'CAN'
            a=imread('CAN_DA.jpg');
            axes(handles.axes2);
            imshow(a);
        case 'CAN CAN'    
            b=imread('CAN_CAN_DA.jpg');
            axes(handles.axes2);
            imshow(b);
        case 'ROD'
            c=imread('ROD_DA.jpg');
            axes(handles.axes2);
            imshow(c);

        case 'ROD ROD'
            d=imread('ROD_ROD_DA.jpg');
            axes(handles.axes2);
            imshow(d);
    end
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over popupmenu1.
function popupmenu1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
