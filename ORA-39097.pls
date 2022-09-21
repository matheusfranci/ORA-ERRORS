/*ORA-39097: Data Pump job encountered unexpected error -1001*/



/*Solução:
Durante o dbms_metadata_util.load_stylesheets, le o diretório $ ORACLE_HOME /dbms /xml /xsl e carregamos os arquivos XSL usando o pacote DBMS_LOB.
Se os arquivos não puderem ser lidos (na maioria dos casos, faltando privilégios de rwx para o usuário oracle)

Verificação:*/
SELECT dbms_metadata_util.table_tsnum(4) from dual;

/*Execução:

Recarregue as folhas de estilo usando o procedimento dbms_metadata_util.load_stylesheets depois que o problema de permissão for resolvido
e tente novamente a importação de DataPump (impdp)*/

exec dbms_metadata_util.load_stylesheets




 

