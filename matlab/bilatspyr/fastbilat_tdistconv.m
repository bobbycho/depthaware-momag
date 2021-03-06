% Run tdistconv on data and weights at each depth layer
%
% Based upon bilateralFilter.m of Paris and Durand's 
%   "A Fast Approximation of the Bilateral Filter using a Signal Processing Approach", (ECCV 2006).
%   See http://people.csail.mit.edu/jiawen/#code
%
% created by Julian Kooij, Delft University of Technology, 2015
%   "Depth-Aware Motion Magnification", (ECCV 2016)
%
function x3d = fastbilat_tdistconv(x3d, sSigma)
    if nargin < 2; sSigma = .1; end
    
    % convolution with t-distribution kernel
    x3d.gridData = tdistconv( x3d.gridData, sSigma );
    x3d.gridWeights = tdistconv( x3d.gridWeights, sSigma );
end
