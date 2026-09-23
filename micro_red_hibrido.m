%%Camila Andrea Garcia Fajardo - Modelado del balance Hibrido


%Se define la variable hora como vector fila
hora=1:24;
%El ejercicio nos plantea que la potencia máxima solar es 25kW
solar_Max=25;
%Establecemos un vector que cumpla con las condiciones de la generación de
%energía las 24h

solar_dia = [0 0 0 0 0 4 9 12 17 19 22 25 ...
 23 20 16 13 10 6 0 0 0 0 0 0];

%La potencia máxima de generación eólica es 15kW
eolica_max=15;
eolica_dia=[10 8 13 9 11 8 13 15 6 9 6 4 ...
 7 12 7 9 6 11 15 14 11 13 10 9];

%suma de generación solar y eólica:
total_generado= solar_dia+eolica_dia;
%Determinar el consumo
demanda_consumo=15;
demanda_dia=[2 2 4 3 3 6 6 8 7 9 10 10 ...
    8 7 8 8 9 12 14 15 13 2 3 4];
%Creamos la gráfica de la generación híbrida
figure;
plot(hora, total_generado, '-oc', 'LineWidth',3);
%Añadimos el consumo demandado a la gráfica
hold on;
plot(hora, demanda_dia, 'sm-', 'LineWidth',3);
%Añadimos descripción a la gráfica y sus ejes
title('Comportamiento Energía Micro-Red');
xlabel('Tiempo (h)');
ylabel('Potencia (kW)');
xticks(0:2:24);
yticks(0:2:40);
legend('Generación total', 'Demanda de energía');
grid on;

