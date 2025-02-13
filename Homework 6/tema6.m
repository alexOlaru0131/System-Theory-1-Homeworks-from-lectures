clc
clear all
close all

k = 1;
tita = @(x,y)(sqrt(y^2+x^2)/x);
wn = @(x,y)(x^2/sqrt(y^2+x^2));

switch k
    case 1
        x = -1; y = j;
        S1 = tf(wn(x,y)^2,[1, 2*tita(x,y)*wn(x,y), wn(x,y)^2]);
        S2 = tf(wn(x,2*y)^2,[1, 2*tita(x,2*y)*wn(x,2*y), wn(x,2*y)^2]);
        S3 = tf(wn(x,3*y)^2,[1, 2*tita(x,3*y)*wn(x,3*y), wn(x,3*y)^2]);
    case 2
    case 3
end

S = [S1, S2, S3];

%%

n = length(S);

switch k
    case 1
    figure(1); hold on; grid;
        for i = 1:n
            step(S(i));
        end

        for i = 1:n

            poli(2*i - 1) = x;
            poli(2*i) = y;
            poli(2*n + 2*i - 1) = x;
            poli(2*n + 2*i ) = -y;
            y = y + 1;

        end
end


figure(2); hold on; grid
plot([0 0], 4*ylim, 'b'); hold on;
plot([0 0], -ylim, 'b'); hold on;
plot(4*xlim, [0 0], 'b'); hold on;

c = 0;
for i = 1:n

    plot(poli(2*i-1),poli(2*i),'x','Color',[c 0 c],'LineWidth',2);
    plot(poli(2*n+2*i-1),poli(2*n+2*i),'x','Color',[c 0 c],'LineWidth',2);
    c = c + 0.3;

end
