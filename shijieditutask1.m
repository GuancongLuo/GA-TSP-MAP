load dataxuanzechengshi
a(1).x1='����';a(1).x2=[116.23 39.54];
a(2).x1='�Ϻ�';a(2).x2=[121.48 31.22];
a(3).x1='����';a(3).x2=[107.95 34.27];
a(4).x1='�Ͼ�';a(4).x2=[119 31.14];
a(5).x1='���';a(5).x2=[113.1 22.20];
a(6).x1='̨��';a(6).x2=[121.6 24.5];
a(7).x1='����';a(7).x2=[134.1 22.30];
%ŷ��%
a(8).x1='����';a(8).x2=[13.2 52.31];
a(9).x1='����';a(9).x2=[2.2 48.52];
a(10).x1='����';a(10).x2=[9.1 45.28];
a(11).x1='�׶�';a(11).x2=[0,51.32];
a(12).x1='����';a(12).x2=[12.37 41.52];
a(13).x1='Ī˹��';a(13).x2=[37.35 54.45];
a(14).x1='�籾����';a(14).x2=[12.34,55.43];
%����%
a(15).x1='��ɼ�';a(15).x2=[-118.22 34.04];
a(16).x1='��ʢ��'; a(16).x2=[-77 38.9];
a(17).x1='����ͼ';a(17).x2=[-122.2 47.38];
a(18).x1='ŦԼ';a(18).x2=[-74,40.43];
a(19).x1='��ʿ��';a(19).x2=[-71.05 42.19];
a(20).x1='��˹��';a(20).x2=[-95.23 29.46];
a(21).x1='��˹ά��˹';a(21).x2=[-115.08,36.1];
%�����Ǽ��ж�%
a(22).x1='����';a(22).x2=[100.29 13.5];
a(23).x1='�¼���'; a(23).x2=[104 1.09];
a(24).x1='��¡��';a(24).x2=[101.42 3.08];
a(25).x1='�żӴ�';a(25).x2=[106.45,-6.08];
a(26).x1='���';a(26).x2=[104.55 11.35];
a(27).x1='����';a(27).x2=[102.6 17.96];
a(28).x1='�ϰ�';a(28).x2=[55.17 25.13];
%���޼�����%
a(29).x1='Ϥ��';a(29).x2=[100.29 13.5];
a(30).x1='ī����'; a(30).x2=[144.58 -37.50];
a(31).x1='������';a(31).x2=[149.08 -35.18];
a(32).x1='�����';a(32).x2=[174.47 -41.17];
a(33).x1='��������';a(33).x2=[-47.55 -15.47];
a(34).x1='��Լ����¬';a(34).x2=[-43.12 -22.54];
a(35).x1='ʥ����';a(35).x2=[-46.38 -23.33];
a(35)
n8=length(a);
n9=length(s);
jg=zeros(2,n9);
for i9=1:n9        %ƥ��õ���Ӧ�� ��γ��
    for i8=1:n8
         equet5=strcmp(s(i9),a(i8).x1);
         if(equet5==1)
              jg(1,i9)=a(i8).x2(1);
               jg(2,i9)=a(i8).x2(2);
         end
    end
end
testnum=length(jg);
for i=1:testnum   %��������
    for j=1:testnum
%     RANGENEW(i,j)=m_lldist([jg(i).x2(1,1),jg(j).x2(1,1)],[jg(i).x2(1,2),jg(j).x2(1,2)]);
    RANGENEW(i,j)=m_lldist([jg(1,i),jg(1,j)],[jg(2,i),jg(2,j)]);
    end
end

    
m_proj('oblique mercator','longitudes',[-175 100], ...
       'latitudes',[56 -56],'direction','vertical','aspect',2.0);
  m_coast('linewidth',2,'color','y');
  m_coast('patch',[.7 .7 .7],'edgecolor','none');
  m_grid get
  [X,Y]=m_ll2xy(-129,48.5);
  line(X,Y,'marker','pentagram','markersize',8,'color','y');
text(X,Y,' M5','vertical','top');
m_line(139.46,39.9,'marker','pentagram','markersize',8,'color','r');
m_text(139.46,39.9,' M4','vertical','top');
% s
m_coast('patch',[.7 .7 .7],'edgecolor','none');
m_grid('xlabeldir','end','fontsize',10);
% set(clf,'Parent',handles.axes1);

 
m_line(116.23,39.59,'marker','pentagram','markersize',8,'color','r');
m_text(116.23,39.59,' M1-����','vertical','top');

m_line(139.96,39.9,'marker','pentagram','markersize',8,'color','r');
m_text(139.96,39.9,' M6-����','vertical','top');


m_line(37.35,54.45,'marker','pentagram','markersize',8,'color','r');
m_text(37.35,54.45,' M7-Ī˹��','vertical','top');

m_line(107.95,34.27,'marker','pentagram','markersize',8,'color','r');
m_text(107.95,34.27,' M3-����','vertical','top');
m_line(113.1,22.2,'marker','pentagram','markersize',8,'color','r');
m_text(113.1,22.2,' M4-���','vertical','top');
m_line(121.6,24.5,'marker','pentagram','markersize',8,'color','r');
m_text(121.6,24.5,'M5-̨��','vertical','top');

m_line(121.48,31.22,'marker','pentagram','markersize',8,'color','r');
m_text(121.48,31.22,'M2-�Ϻ�','vertical','top');

m_line(9.1,45.28,'marker','pentagram','markersize',8,'color','r');
m_text(9.1,45.28,'M8-����','vertical','top');

m_line(2.2,48.52,'marker','pentagram','markersize',8,'color','r');
m_text(2.2,48.52,'M11-����','vertical','top');

m_line(0,51.32,'marker','pentagram','markersize',8,'color','r');
m_text(0,51.32,'M12-�׶�','vertical','top');

m_line(12.37,41.52,'marker','pentagram','markersize',8,'color','r');
m_text(12.37,41.52,'M9-����','vertical','top');

m_line(13.2,52.31,'marker','pentagram','markersize',8,'color','r');
m_text(13.2,52.31,'M10-����','vertical','top');
%����%


% cnt=0;
% choosenum=length()
% com(cnt)=
testnum=length(a);
for i=1:testnum
    for j=1:testnum
    RANGENEW(i,j)=m_lldist([a(i).x2(1,1),a(j).x2(1,1)],[a(i).x2(1,2),a(j).x2(1,2)]);
    end
end




%  RANGE=m_lldist([116.23 121.48 107.95 113.1 121.6 139.96 37.35 9.1 12.37 13.2 2.2 0],[39.54,31.22,34.27,22.2,24.5,39.9,54.45,45.28,41.52,52.31,48.52,51.32]);
RANGE1=[m_lldist([116.23 116.23],[39.54,39.54]) m_lldist([116.23 121.48],[39.54,31.22]) m_lldist([116.23 107.95],[39.54,34.27]) m_lldist([116.23 113.1],[39.54,22.2]) m_lldist([116.23 121.6],[39.54,24.5]) ];
RANGE2=[m_lldist([121.48 116.23],[31.22,39.54]) m_lldist([121.48 121.48],[31.22,31.22]) m_lldist([121.48 107.95],[31.22,34.27]) m_lldist([121.48 113.1],[31.22,22.2]) m_lldist([121.48 121.6],[31.22,24.5]) ];
RANGE3=[m_lldist([107.95 116.23],[34.27,39.54]) m_lldist([107.95 121.48],[34.27,31.22]) m_lldist([107.95 107.95],[34.27,34.27]) m_lldist([107.95 113.1],[34.27,22.2]) m_lldist([107.95 121.6],[34.27,24.5]) ];
RANGE4=[m_lldist([113.1 116.23],[22.2,39.54]) m_lldist([113.1 121.48],[22.2,31.22]) m_lldist([113.1 107.95],[22.2,34.27]) m_lldist([113.1 113.1],[22.2,22.2]) m_lldist([113.1 121.6],[22.2,24.5]) ];
RANGE5=[m_lldist([121.6 116.23],[24.5,39.54]) m_lldist([121.6 121.48],[24.5,31.22]) m_lldist([121.6 107.95],[24.5,34.27]) m_lldist([121.6 113.1],[24.5,22.2]) m_lldist([121.6 121.6],[24.5,24.5]) ];
RANGE=[RANGE1;RANGE2;RANGE3;RANGE4;RANGE5];%�������
f = figure('Position', [200 200 550 250]);
t = uitable('Parent', f, 'Position', [25 25 520 200]);
dat1={true;false;true;false;true};
RANGE1=sprintfc('%g',RANGE);
RANGE2=[RANGE1 dat1];
set(t, 'Data',RANGE2)
set(t, 'ColumnName', { '����','�Ϻ�','����','���','̨��','Available'});
                   
columnformat = {'','','','','','logical'};
columneditable =  [false false false false false true];
set(t, 'RowName', { '����','�Ϻ�','����','���','̨��'});
set(t, 'ColumnFormat', columnformat);
set(t, 'ColumnEditable', columneditable);
%                      testData(16).name,testData(17).name,testData(18).name,testData(19).name,testData(20).name,});
backgroundColor = [.8 .8 .8;.6 .6 .6];
set(t, 'BackgroundColor', backgroundColor);


% A = {'','����','�Ϻ�','����','���','̨��'};
% �Ŵ��㷨��������
num=50;
termOps=500;
pc=0.25;
cxops=3;
pm=0.3;
alpha=0.1;
[b,t1]=gac(RANGE,termOps,num,pc,cxops,pm,alpha)

