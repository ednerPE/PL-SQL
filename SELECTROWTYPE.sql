set serveroutput ON

/*DECLARE
    /SalariodeEmpleado NUMBER;
    NOMBRE EMPLOYEES.FIRST_NAME%TYPE;
    EMPLEADO EMPLOYEES%ROWTYPE;
    
    
BEGIN
    SELECT
        *
    INTO EMPLEADO
    FROM
        employees
    WHERE
        employee_id = 101;

    dbms_output.put_line(EMPLEADO.SALARY || ' '||EMPLEADO.FIRST_NAME);
END;
 */

DECLARE
    salario_maximo employees.salary%TYPE;
begin 
SELECT
          MAX(salary)
      INTO salario_maximo
      FROM
          employees
      WHERE
          department_id = 100;
 dbms_output.put_line('El salario maximo de ese departamento es: ' || salario_maximo);

end;
 