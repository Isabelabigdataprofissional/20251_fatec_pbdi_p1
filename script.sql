-- ----------------------------------------------------------------
-- 1 Base de dados e criação de tabela
--escreva a sua solução aqui


-- ----------------------------------------------------------------
-- 2 Resultado em função da formação dos pais
--escreva a sua solução aqui


-- ----------------------------------------------------------------
-- 3 Resultado em função dos estudos
--escreva a sua solução aqui


--query-dinamica numero de alunos aprovados e estudam sozinhos 
--SELECIONE NOME DOS ALUNOS DA TABELA APROVADOS_ESTUDAM  SO AQUELE QUE SAO OS APRO 7 E ESTUDAM 1
--PREP_STUDY = 1  E  GRADE  = 7   

DO $$ 
DECLARE
v_aluno INT ;
v_aprovados INT := 7; 
v_estudam INT:= 1;
v_aprovados_estudam VARCHAR(200) := 'p1_tabela';
cur_aprovados_estudam REFCURSOR;
 BEGIN
 --abre CURSOR
 OPEN cur_aprovados_estudam FOR EXECUTE 
 format (' SELECT id_serial
            FROM %s
            WHERE GRADE = $1 AND PREP_STUDY = $2'
            ,v_aprovados_estudam)
        USING v_aprovados, v_estudam;

--recupera dados
LOOP 
 FETCH cur_aprovados_estudam INTO v_aluno;
 EXIT WHEN NOT FOUND;
  RAISE NOTICE '%', v_aluno;
END LOOP;
CLOSE cur_aprovados_estudam;

END;
$$

-- ----------------------------------------------------------------
-- 4 Salário versus estudos
--escreva a sua solução aqui


-- ----------------------------------------------------------------
-- 5. Limpeza de valores NULL
--escreva a sua solução aqui

-- ----------------------------------------------------------------