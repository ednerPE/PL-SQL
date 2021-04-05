/*Ejercicio 
extraer las inciales de un nombre y separlo por medio de un punto ".",Ademas colocarlo una funcion que lo retorne 
en mininusculas  y mayusculas
*/
SET SERVEROUTPUT ON

DECLARE
    name        VARCHAR2(50);
    lastname    VARCHAR2(50);
    iniciales   VARCHAR2(10);
BEGIN
    name := 'Peter';
    lastname := 'Thompson';
    --UTILIZANDO LA FUNCION DE SUBTRAER 
    iniciales := substr(name, 1, 1)
                 || '.'
                 || substr(lastname, 1, 1);

--MOSTRANDO EN PANTALLA
    dbms_output.put_line( 'SIN APLICAR MAYUS Y MINUS ' ||
                         substr(name, 1, 1)
                            || '.'
                            || substr(lastname, 1, 1));

    dbms_output.put_line(upper(iniciales));
    dbms_output.put_line(lower(iniciales));
END;