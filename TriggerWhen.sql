create or replace TRIGGER TR4_REGION
BEFORE INSERT OR UPDATE OR DELETE 
ON REGIONS
FOR EACH ROW
WHEN(NEW.REGION_ID > 1000)
BEGIN
    IF inserting THEN
        :new.region_name := upper(:new.region_name);
        INSERT INTO log_table VALUES (
            'ACTUALIZACION EL VALOR DE REGION_NAME',
            user
        );

    END IF;

    IF updating THEN
        :new.region_name := upper(:new.region_name);
        INSERT INTO log_table VALUES (
            'ACTUALIZACION EL VALOR DE REGION_NAME',
            user
        );

    END IF;

    IF updating THEN
        INSERT INTO log_table VALUES (
            'ACTUALIZACION EL VALOR DE REGION_NAME',
            user
        );

    END IF;
    IF deleting THEN
        INSERT INTO log_table VALUES (
            'ACTUALIZACION EL VALOR DE REGION_NAME',
            user
        );

    END IF;
END;
