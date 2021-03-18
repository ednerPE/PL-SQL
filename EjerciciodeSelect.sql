SET SERVEROUTPUT ON

DECLARE
    SalariodeEmpleado NUMBER;
    NOMBRE EMPLOYEES.FIRST_NAME%TYPE;
BEGIN
    SELECT
        salary,first_name 
    INTO SalariodeEmpleado,NOMBRE
    FROM
        employees
    WHERE
        employee_id = 100;

    dbms_output.put_line(SalariodeEmpleado || ' '||NOMBRE);
END;