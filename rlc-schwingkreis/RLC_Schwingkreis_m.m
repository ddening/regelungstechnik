% Arbeitsauftrag 2
% Aufruf des Simulinkmodells eines RLC Reihenschwingkreises und darstellen der Ergebnisse
% Erstellt am 05.05.2020
% Author: Arnulf Mittelstädt, Dimitri Dening
% Praktikumsgruppe: 4
%% 
close all % schließt alle offenen figures
clear all % löscht a l l eVariablen im Worcspace
clc % löscht das Command Window
%% Festlegen der einzelnen Parameter.
U_e = 5;      % [V]
R = 100;      % [Ohm]
L = 0.24;     % [H]
C = 2e-6;     % [F]
%% Startet das entsprechende Simulinkmodell.
sys = sim('RLC_Schwingkreis_s.slx');
%% Übernahme der Simulationsergebnisse
Ausgabe = sys.yout;
Zeit = sys.tout ;
%% Speichern der Simulationsergebnisse
save('RLC_Ergebnisse', 'Zeit', 'Ausgabe')
%% Darstellen der Ergebnisse
plot(Zeit, Ausgabe)
xlabel ('Zeit [s]')
ylabel ('Spannung U_c [V]')
legend ('Spannungsverlauf')