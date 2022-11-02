18:56:36 SYS@prd> create user MATHEUSORION identified by 2022;
create user MATHEUSORION identified by 2022
            *
ERROR at line 1:
ORA-65096: invalid common user or role name

-- Solução
-- Habilitar o ORACLE_SCRIPT
alter session set "_ORACLE_SCRIPT"=true;

-- Após a correção
Elapsed: 00:00:00.00
18:57:04 SYS@prd> alter session set "_ORACLE_SCRIPT"=true;

Session altered.

Elapsed: 00:00:00.01
19:01:20 SYS@prd> create user matheusorion identified by 2022;

User created.

