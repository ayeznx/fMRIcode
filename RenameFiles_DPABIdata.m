%rename rp files
ID={'001','002','003','004','005','006','007','008','009','010','011','012','013','014','015','016','017','018','021','022','023','024','025','026','028','029','031','032','033','034','035','036','037','038'};

for i = 1:34

    path = ['F:\2023graduate\znxRest\ArtRepair\RealignParameter\Sub',ID{i}];
    cd(path) %����pathΪ��ǰ·��

    files = ls;     %�г�Ҫ����Ŀ¼�������ļ�
    oldName = files(strmatch('rpSub',files),:); %���ҷ���������
    newName = ['rpSub', ID{i}, '.txt'];

    movefile(oldName, newName)
end