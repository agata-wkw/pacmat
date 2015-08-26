% Calculate PAC using the generalized linear model (GLM) method
% (see Penny, 2008)
% 
% Parameters
% ----------
% lo : array-like, 1d
%     The low frequency time-series to use as the phase component
% hi : array-like, 1d
%     The high frequency time-series to use as the amplitude component
% f_lo : (low, high), Hz
%     The low frequency filtering range
% f_high : (low, high), Hz
%     The low frequency filtering range
% fs : float
%     The sampling rate (default = 1000Hz)
% 
% Returns
% -------
% pac : scalar
%     PAC value
function pac = glm(lo, hi, f_lo, f_hi, fs)

% Set the python path
setpypath

% Convert inputs
lo = py.numpy.array(lo);
hi = py.numpy.array(hi);
f_lo = py.tuple(f_lo);
f_hi = py.tuple(f_hi);

% Call python
pac = py.pac.glm(lo, hi, f_lo, f_hi, fs);