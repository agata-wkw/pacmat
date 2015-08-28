%PAC_GLM Calculate phase-amplitude coupling (PAC) using the general linear 
% model (GLM) method (see Penny, 2008)
%   pac = PAC_GLM(lo, hi, f_lo, f_hi, fs) calculates PAC between the phase of a
%   low-frequency oscillation in the time series, lo, and the amplitude of
%   a high-frequency oscillation in the time series, hi. The cutoff
%   frequencies for the low-frequecy and high-frequency bands are defined
%   in f_lo and f_hi (Hz), respectively. fs is the sampling rate (Hz).
function pac = pac_glm(lo, hi, f_lo, f_hi, fs)

    % Convert inputs
    lo = py.numpy.array(lo);
    hi = py.numpy.array(hi);
    f_lo = py.tuple(f_lo);
    f_hi = py.tuple(f_hi);

    % Call python
    pac = py.pacpy.pac.glm(lo, hi, f_lo, f_hi, fs);
end