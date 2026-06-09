function B = calc_dipole_B(L, theta, B0)
% CALC_DIPOLE_B Summary of this function goes here
%   Detailed explanation goes here

if nargin < 3
    B0 = 3.12E-5;
end

B = (B0./(L.^3)).*(1+3*sin(theta)).^0.5;
end