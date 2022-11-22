ORA-56935: existing datapump jobs are using a different version of time zone data file

SELECT PROPERTY_NAME, SUBSTR (property_value, 1, 30) value
FROM DATABASE_PROPERTIES
WHERE PROPERTY_NAME LIKE 'DST_%'
ORDER BY PROPERTY_NAME;

PROPERTY_NAME VALUE
----------------------------------------------------------------------------------------------------------------------
DST_PRIMARY_TT_VERSION 39
DST_SECONDARY_TT_VERSION 36
DST_UPGRADE_STATE DATAPUMP(1)

ALTER SESSION SET EVENTS '30090 TRACE NAME CONTEXT FOREVER, LEVEL 32';
Session altered.

SQL> exec dbms_dst.unload_secondary;
PL/SQL procedure successfully completed.


-- Deve executar a procedure  até o DST_UPGRADE_STATE DATAPUMP ficar com o valor NONE

PROPERTY_NAME VALUE
------------------------------
DST_PRIMARY_TT_VERSION 32
DST_SECONDARY_TT_VERSION 0
DST_UPGRADE_STATE NONE
