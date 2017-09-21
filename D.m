function [x] = D(w, R, L, C)
    x1 = angle(R./(R+1j.*w.*L+1./(1j.*w.*C)));
    x2 = angle(R./(R+1j.*(w+.01).*L+1/(1j.*(w+.01).*C)));
    x = -(x2-x1)/.01;
end
