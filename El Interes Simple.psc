Algoritmo sin_titulo
	Definir Ci, Ic, m ,i , cf, ip Como Real;
	Escribir "Ingrese el Capital inicial";
	leer Ci;
	Escribir "Ingrese el Interes compuesto (sin el signo %)";
	leer ip;
	i<-ip/100;
	Escribir "Ingrese a cuantos meses";
	leer m;
	cf<-ci*((1+i)^m);
	Escribir "El Capital Final es de:" , cf;
FinAlgoritmo
