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


-- ----------------------------------------------------------------
-- 3 Resultado em função dos estudos
--escreva a sua solução aqui


-- ----------------------------------------------------------------
-- 4 Salário versus estudos
--escreva a sua solução aqui


-- ----------------------------------------------------------------
-- 5. Limpeza de valores NULL
--escreva a sua solução aqui

-- ----------------------------------------------------------------