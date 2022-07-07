function I= Int_Tr(n)
    x=linspace(0,1,101);
    h=1/100;
    y=x.^n./(x+5);
    I=(y(1)+y(101)+2*sum(y(2:100)))/2*h;
end

