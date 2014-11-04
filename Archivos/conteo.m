function c = conteo( y )
%UNTITLED2 Summary of this function goes here
%   conteo de los valores
[ncls, ny] = size(y);
peso=0;
unidad=0;
sn=0;
for j=1:ny
  a=y(1,j);
  ab=y(2,j);
  if a>=0.9&&a<1.1
      peso=peso+1;
  end
  
  if ab>=0.9&&ab<1.1
      unidad=unidad+1;
  end
  
  sn=ny-(peso+unidad);
  
end            
fprintf('Los productos que serán vendidos por su Peso son: %i \n',peso);
fprintf('Los productos que serán vendidos por Undades son: %i\n',unidad);
fprintf('Los productos que no han podido ser clasificados son: %i\n',sn);
end
