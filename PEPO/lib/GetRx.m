function [Rx] = GetRx(theta)

Rx = [cos(0.5*theta), -1j*sin(0.5*theta); -1j*sin(0.5*theta), cos(0.5*theta)];

end