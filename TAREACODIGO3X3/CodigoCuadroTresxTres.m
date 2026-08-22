%%%Dibujando ejes principales
line([0 2], [0 0], [0 0], "Color",'red','LineWidth',3)
line([0 0], [0 2], [0 0], "Color",'green','LineWidth',3)
hold on

%%%Dibujando articulaciones
% Se usa scatter
joint_1 = [0 0]';
scatter(joint_1(1), joint_1(2), 100, 'filled','MarkerFaceColor', 'blue');
l1 = input("Introduce la longitud del eslabon 1 [m]: ");
theta1 = input("Introduce el angulo de la primera articulacion [rad]: ");
l1x = l1 * cos(theta1);
l1y = l1 * sin(theta1);

joint_2 = [l1x l1y];
scatter(joint_2(1), joint_2(2), 100, 'filled','MarkerFaceColor', 'blue');
l2 = input("Introduce la longitud del eslabon 2 [m]: ");
theta2 = input("Introduce el angulo de la segunda articulacion [rad]: ");
l2x = l2 * cos(theta1 + theta2);
l2y = l2 * sin(theta1 + theta2);

Efx = l1x + l2x;
Efy = l1y + l2y;
EF = [Efx Efy]';

scatter(EF(1), EF(2), 100, 'filled','MarkerFaceColor', 'blue');

%%%Dibujando eslabones
%Primer eslabon
line([joint1(1) joint1(2)], [joint2(1) joint2(2)], [0 0], "Color","black","LineWidth",2);

%Segundo eslabon
line([joint2(1) EF(2)], [joint2(1) EF(2)], [0 0], "Color","black","LineWidth",2);
