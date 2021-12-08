function visual(embeds,labels)
[X,Y,Z] = sphere(20);      % 20ָ����γ�ߵ����̶ܳ�
figure;
surf(X,Y,Z,'FaceAlpha',0.05);  %������ά��
axis equal;
hold on;
axis off;    % ȡ��������
allPs = [];
color=[[244,67,54],[233,30,99],[156,39,176],[103,58,183],[63,81,181],[33,150,243],[0,188,212],[0,150,136],[76,175,80],[139,195,74],[205,220,57],[255,183,77]];  %ָ����ɫ
color = color/255;
for i = 0:11    % �����
          ps = embeds(labels==i,:);
          allPs = [allPs; ps];
          scatter3(ps(:,1), ps(:,2), ps(:,3), 'filled', 'MarkerFaceColor', color(3*i+1:(3*i+3))); 
% ����ÿ���
end

allPsZeros = zeros(size(allPs,1),1);
X = [allPs(:,1) allPsZeros];
Y = [allPs(:,2) allPsZeros];
Z = [allPs(:,3) allPsZeros];

plot3(X', Y', Z', 'Color', [0.5, 0.5, 0.5]);

xlim([-1 1]);
ylim([-1 1]);
zlim([-1 1]);    % ָ��������̶ȷ�Χ
