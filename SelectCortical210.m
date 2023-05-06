%%
%select target label(s) from current parcellations

%%the present code is for selecting the former 210 cortical regions from
%%fan246 atlas

%%
atlas = load_nii('BN_Atlas_246_2mm.nii');

img2 = atlas.img;
for i = 1:size(img2,1)
    for j = 1:size(img2,2)
        for k = 1:size(img2,3)
            if img2(i,j,k) >= 211 && img2(i,j,k) <= 246
                img2(i,j,k) = 0;
            end
        end
    end
end

nii = make_nii(img2);
save_nii(nii, 'D:\DPABI\Templates\BN_atlas_210.nii');

