function [K,Pout] = joseph(z,R,H,P)
%
% P. D. Joseph's "stabilized" Kalman filter measurement
% update.
%
n   = length(H);
zp  = sqrt(1/R);
Hp  = zp*H;
K   = (Hp*P*Hp' + 1) \ P*Hp';
W   = eye(n)-K*Hp;
Pout= W*P*W' + K*K';
%%  
%%  M. S. Grewal, A. P. Andrews, and C. G. Bartone
%%  Global Navigation Satellite Systems, Inertial Navigation, and Integration
%%  Wiley-Interscience, 2013
%%  
