R1 = input ('1º Resistor: ');
R2 = input ('2º Resistor: ');
R3 = input ('3º Resistor: ');

RE1 = (R1 * R2) / (R1 + R2);

RET = (RE1 * R3) / (RE1 + R3);

disp ('Resistência Equivalente: ');
disp (RET);
