create or replace trigger CHECK_DATE_OF_BIRTH
    before insert
    on Users
    for each row
DECLARE
BEGIN
    IF (:new.DATE_OF_BIRTH <= ADD_MONTHS(SYSDATE, - 120) AND :new.DATE_OF_BIRTH >= (ADD_MONTHS(SYSDATE, -1300))) = FALSE THEN
        RAISE_APPLICATION_ERROR(-20999, 'invalid date');
    end if;
end;
/

CREATE OR REPLACE TRIGGER NEW_USER
	AFTER INSERT
	ON USERS
	FOR EACH ROW
DECLARE	
BEGIN
	IF :NEW.type = 'STUDENT' THEN
		CREATE_STUDENT(:NEW.user_id);
	ELSE
		CREATE_TUTOR(:NEW.user_id);
	END IF;
END;
/

CREATE OR REPLACE TRIGGER CHECK_EMAIL
	BEFORE INSERT
	ON USERS
	FOR EACH ROW
DECLARE	
	user_row Users%ROWTYPE;
BEGIN
	IF IS_EMAIL_TAKEN(:NEW.email) = 'YES' THEN
		RAISE_APPLICATION_ERROR(-20999, 'Email is already taken'||:NEW.email);
	END IF;
END;
/
;
-- DROP TRIGGER NEW_USER ;
SELECT * FROM user_errors WHERE type='TRIGGER';