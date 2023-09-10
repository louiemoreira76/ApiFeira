USE sitefeiradb;

INSERT INTO tb_inscricao(nm_nome, ds_email, bt_visitou)
     VALUES ('Bixa', 'gabrielgarcialacerda@gmail.com', false ),
            ('Davi', 'davigamer079@gmail.com', false ),
            ('Lucas', 'lucasgarcia@gmail.com', false );

SELECT * FROM tb_inscricao;

SELECT * FROM tb_inscricao 
WHERE nm_nome LIKE '%%'
AND ds_email LIKE '%%';

UPDATE tb_inscricao
SET bt_visitou = true
WHERE id_inscricao = ?;