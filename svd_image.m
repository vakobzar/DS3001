clearvars;
k=20;
[A,map]=imread('JVN.jpg');
rgb2gray(A); 

Ak=double (A(:,:,1));

[U,S,V]=svd(Ak);
S(k+1:end,:)=0;
S(:,k+1:end)=0;
Ak=U*S*transpose(V);
figure;
imshow (uint8(Ak));
m=size(A);

compression = 100*(1-((m(1)*k+k^2+m(2)*k))/(m(1)*m(2)));

title ([num2str(m(1)) 'x' num2str(m(2))...
    ' pixels with k=' num2str(k) ' resulting in ' num2str(compression,2) '% compression'])



