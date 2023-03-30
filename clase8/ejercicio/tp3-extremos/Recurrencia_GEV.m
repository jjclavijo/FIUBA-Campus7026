%Este programa calcula los Intervalos de Confianza para la GEV
%Formulas extraidas del libro de Coles (2001)
%
clear all
na=input('archivo de datos: ','s');
y=load(na);
param=gevfit(y);
ka=param(1);
sigma=param(2);
mu=param(3);
[like,ACOV]=gevlike(param,y);
T=5:5:500;
N=length(T);
for i=1:N
    p=1/T(i);
    yp=-log(1-p);
    zmu=1;
    zsigma=-(ka^(-1))*(1-(yp)^(-ka));
    zka=(sigma*ka^(-2))*(1-(yp)^(-ka))-(sigma/ka)*yp^(-ka)*log(yp);
    vari(i)=[zka,zsigma,zmu]*ACOV*[zka,zsigma,zmu]';
    zp(i)=gevinv(1-p,ka,sigma,mu);
    desv(i)=sqrt(vari(i));
    anchint(i)=desv(i)*1.96;
    zpmas(i)=zp(i)+anchint(i);
    zpmenos(i)=zp(i)-anchint(i);
end

