matlabbatch = second;
spm('defaults', 'FMRI');
spm_jobman('run', matlabbatch);

function matlabbatch = second

% ### define scans
ID={'001','002','003','004','005','006','007','008','009','010','011','012','013','014','015','016','017','018','021','022','023','024','025','026','028','029','031','032','033','034','035','036','037','038'};

secondScan = cell(34,1);

for i=1:34
     scan_n= ['F:\znxCAL\afterpre & activation\0129_1st level contrast\Sub', ID{i}, '\con_0001.nii,1'];
     secondScan{i} = scan_n; 
end

% ### org batch
matlabbatch{1}.spm.stats.factorial_design.dir = {'F:\znxCAL\afterpre & activation\0130_2nd level'};
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = secondScan;
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;

matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;

matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'CAL>fixation';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
end
