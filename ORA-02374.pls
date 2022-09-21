/*ORA-02374: conversion error loading table
Objetivo
O erro ORA-02374 ocorre quando você tenta impontar um schema e o parametro de NLS_CHARACTERSET está diferente do banco de dados de Origem.

Resolução
Verificando NLS_CHARACTERSET no banco de Origem*/

select VALUE
     from nls_database_parameters
     where parameter='NLS_CHARACTERSET';
     
/*Alterando NLS_CHARACTERSET no banco de dados destino (12.2.0.1)*/

SQL> shutdown immediate;
SQL> startup restrict;
SQL> alter database character set INTERNAL_USE WE8MSWIN1252;
SQL> shutdown immediate;
SQL> startup;
