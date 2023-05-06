% Load the NIfTI file
nii = load_nii('sFiltered_4DVolume.nii');

% Extract the 4D data for the voxel of interest
voxel_data = squeeze(nii.img(30, 30, 30, :));

% Plot the time series
plot(voxel_data);
xlabel('Time (TR)');
ylabel('Intensity');