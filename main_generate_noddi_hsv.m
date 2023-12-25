% Assuming you have your data loaded or calculated:
% icvf, fiso, and ODI should be 3D matrices of the same size

% Example of loading the data - replace with your actual data loading methods
icvf = niftiread('/public/afaiyaz/share_NODDI_CSVD_MRE/RN038/NDI.nii');
fiso = niftiread('/public/afaiyaz/share_NODDI_CSVD_MRE/RN038/fISO.nii');
ODI = niftiread('/public/afaiyaz/share_NODDI_CSVD_MRE/RN038/ODI.nii');

% Define the slices you want to plot, for example: slices 70, 72, and 74
slices_to_plot = [50];

% Call the function
plot_combined(icvf, fiso, ODI, slices_to_plot);
