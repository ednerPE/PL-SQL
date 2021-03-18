CREATE OR REPLACE TRIGGER tr3_region BEFORE
    INSERT OR UPDATE OR DELETE ON regions
    FOR EACH ROW
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