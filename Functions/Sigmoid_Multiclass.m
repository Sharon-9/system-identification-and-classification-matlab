function f = Sigmoid_Multiclass(n,d1,d2,d3)
f = 1./(1+exp(d1-n)+exp(d2-n)+exp(d3-n));
end