function v = gen2dv(xr, yr)

m = size(xr, 2);	% Vlores en x
n = size(yr, 2);  % Valores en y

v=ones(2,m*n);		% Matriz resultante

for i=1:m,
   for j=1:n,
      v(1,(i-1) * n + j) = xr(i);
      v(2,(i-1) * n + j) = yr(j);
   end
end 	
