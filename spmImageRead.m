function[image,input] = spmImageRead(fileName)
% NIFTI/ANALYZE Image Read Based on SPM5
% $ Input $
%     - fileName : input image filename. (*.img, *.hdr, *.nii, *.nii.gz)
%
% $ Version $
%     2008-08-04
%
% $ Usage $
%      spmImageRead(inputFileName)
%
%--------------------------------------------------------------------------
%     wanlin zhu
%     NeuroPsychiatric Institute, Euroa Centre
%     School of Psychiatry 
%     University of New South Wales
%     Email : wanlin.zhu@unsw.edu.au
%==========================================================================


if nargin < 1
	error('spmImageIO require input file name');
end

%addpath([matlabroot '/toolbox/spm5']);
%not nessasry for my Mac
input = spm_vol(fileName);
image = numeric(input.private.dat);
image(logical(isnan(image))) = 0;
