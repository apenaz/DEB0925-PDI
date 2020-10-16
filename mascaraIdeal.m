function mascara = mascaraIdeal(ny,nx,raio)
mascara=zeros (ny,nx);
mascara(round(ny/2),round(nx/2))=1;
bw=bwdist(mascara);
mascara(bw<=raio)=1;
end