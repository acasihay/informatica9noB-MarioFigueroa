Proceso sin_titulo
Definir N, A Como caracter;
Definir T1, T2, T3, PA Como Real;
Escribir "Ingresar el nombre del estudiante";
Leer N;
Escribir "Ingresar nombre de la asignatura";
Leer A;
Escribir "Ingresar calificaciones trimestrales";
Leer T1, T2, T3;
PA <- (T1+T2+T3)/3;

Si PA > 7 Entonces
    Escribir "El estudiante", N, "Aprobó la asignatura de ", A, "Con un promedio de", PA;
Sino
    Si PA > 4 y PA <= 7 Entonces
        Escribir " El estudiante ", N, " Está supletorio en la asignatura de ", A, " Con un promedio de ", PA;
    Sino
        Escribir " El estudiante ", N, " Reprobó la asignatura de ", A, " Con un promedio de ", PA;
    FinSi
FinSi

FinProceso
