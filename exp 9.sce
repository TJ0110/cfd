clc;clf;clear;
uw=50;vs=20;Pn=0;Pe=10;de=1;dn=0.6;
Pw_star=20;Ps_star=20;Pp_star=15;
Pe_star=Pe;Pn_star=Pn;
disp('Solving momentum equation');
ue_star=de*(Pp_star-Pe_star)
disp('ue_star');
disp(ue_star);
vn_star=dn*(Pp_star-Pn_star)
disp('vn_star');
disp(vn_star);
disp('Pressure Correction');
Pe_new=0;Pn_new=0;
Pp_new=((de*Pe_new)+(dn*Pn_new)+(uw+vs-ue_star-vn_star))/(de+dn);
disp('Pp_new');
disp(Pp_new);
Pp=Pp_star+Pp_new;
disp('Corrected Pressure is');
disp(Pp);
ue=ue_star+de*(Pp_new-Pe_new);
vn=vn_star+dn*(Pp_new-Pn_new);
disp('Corrected velocities are');
disp('ue');
disp(ue);
disp('vn');
disp(vn);
