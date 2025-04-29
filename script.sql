-- ----------------------------------------------------------------
-- 1 Base de dados e criação de tabela
--escreva a sua solução aqui
CREATE TABLE p1_tabela(
ID_SERIAL SERIAL PRIMARY KEY,
STUDENTID VARCHAR,
AGE INT,
GENDER INT,
HS_TYPE INT,
SCHOLARSHIP INT,
WORK INT,
ACTIVITY INT,
PARTNER INT,
SALARY INT,
TRANSPORT INT,
LIVING INT,
MOTHER_EDU INT,
FATHER_EDU INT,
N_SIBLINGS INT,
KIDS INT,
MOTHER_JOB INT,
FATHER_JOB INT,
STUDY_HRS INT,
READ_FREQ INT,
READ_FREQ_SCI INT,
ATTEND_DEPT INT,
IMPACT INT,
ATTEND INT,
PREP_STUDY INT,
PREP_EXAM INT,
NOTES INT,
LISTENS INT,
LIKES_DISCUSS INT,
CLASSROOM INT,
CUML_GPA INT,
EXP_GPA INT,
COURSE_ID INT,
GRADE INT
);

ALTER TABLE p1_tabela
DROP COLUMN studentid,
DROP COLUMN age,
DROP COLUMN gender,
DROP COLUMN hs_type,
DROP COLUMN scholarship,
DROP COLUMN work,
DROP COLUMN activity,
DROP COLUMN partner,
DROP COLUMN transport,
DROP COLUMN living,
DROP COLUMN n_siblings,
DROP COLUMN kids,
DROP COLUMN mother_job,
DROP COLUMN father_job,
DROP COLUMN study_hrs,
DROP COLUMN read_freq,
DROP COLUMN read_freq_sci,
DROP COLUMN attend_dept,
DROP COLUMN impact,
DROP COLUMN attend,
DROP COLUMN notes,
DROP COLUMN listens,
DROP COLUMN likes_discuss,
DROP COLUMN classroom,
DROP COLUMN cuml_gpa,
DROP COLUMN exp_gpa,
DROP COLUMN course_id



-- ----------------------------------------------------------------
-- 2 Resultado em função da formação dos pais
--escreva a sua solução aqui
DO $$
 DECLARE
    cur_alunos_aprov REFCURSOR;
    qtd_alunos INT;

 BEGIN
    OPEN cur_alunos_aprov FOR
    SELECT id_serial
    FROM p1_tabela;

 LOOP
    FETCH cur_alunos_aprov INTO qtd_alunos;
    IF mother_edu OR father_edu = 6 THEN
        qtd_alunos = qtd_alunos + 1;
        RAISE NOTICE '%', qtd_alunos;
    ELSE
        EXIT WHEN NOT FOUND;
        RAISE NOTICE '%', qtd_alunos;

END IF;
END LOOP;
CLOSE cur_alunos_aprov;
 END;
 $$


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