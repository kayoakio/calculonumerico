//Deise Santana 

//Ler a resistência de 3 resistores em Paralelo
R1 = input ('1º Resistor: ');
R2 = input ('2º Resistor: ');
R3 = input ('3º Resistor: ');

//Calcular a Resistência Total
RE1 = (R1 * R2) / (R1 + R2);
RET = (RE1 * R3) / (RE1 + R3);

disp ("Resistência Total: "+ string(RET));
//disp (RET);
