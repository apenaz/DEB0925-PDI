% 2.a a) Crie uma fun��o com o nome
% �function im=mascaraFourier(imagem, mascara)�.
% Essa fun��o deve receber a imagem e m�scara.
% A fun��o deve calcular a fft da imagem (utilizando o operador shift) e 
% multiplica-la ponto a ponto (.*) a imagem transformada pela m�scara. 
% E por fim calcular as opera��es inversas de shift e da fft. Como sa�da ela deve
% fornecer a imagem  transformada.

function im=mascaraFourier(imagem, mascara)
    fftImagem = fftshift(fft2(double(imagem)));
    fftMascara = fftshift(fft2(double(mascara)));
    resultadoDoFiltro = fftImagem .* fftMascara;
    inversa = ifft2( fftshift( resultadoDoFiltro ));
    im = uint8( inversa );
end

