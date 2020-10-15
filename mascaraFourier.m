% 2.a a) Crie uma função com o nome
% “function im=mascaraFourier(imagem, mascara)”.
% Essa função deve receber a imagem e máscara.
% A função deve calcular a fft da imagem (utilizando o operador shift) e 
% multiplica-la ponto a ponto (.*) a imagem transformada pela máscara. 
% E por fim calcular as operações inversas de shift e da fft. Como saída ela deve
% fornecer a imagem  transformada.

function im=mascaraFourier(imagem, mascara)
    fftImagem = fftshift(fft2(double(imagem)));
    fftMascara = fftshift(fft2(double(mascara)));
    resultadoDoFiltro = fftImagem .* fftMascara;
    inversa = ifft2( fftshift( resultadoDoFiltro ));
    im = uint8( inversa );
end

