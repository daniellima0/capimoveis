--Clientes
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Samuel Lago','lagosamuca@gmail.com','(53) 98457-2134','625.487.670-19');
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Maria Araujo','mariaaraujo@gmail.com','(82) 99915-8791','520.301.134-34');
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Amanda Lopes','amandalopes@gmail.com','(21) 99204-4111','631.857.607-26');
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Davi Silva','silvadavi@gmail.com','(91) 98760-2035','358.932.192-74');
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Laura Fernandes','laurafernandes@gmail.com','(71) 99741-8208','159.073.325-81');
INSERT INTO tb_cliente (nome, email, telefone,cpf) values ('Gael Rodrigues','gaelrodrigues@gmail.com','(71) 99981-7555','126.570.525-92');

--Regiao
INSERT INTO tb_regiao (nome_regiao) VALUES ('Salvador');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Lauro de Freitas');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Arembepe');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Mata de São João');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Madre de Deus');
INSERT INTO tb_regiao (nome_regiao) VALUES ('São Lourenço do Sul');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Atalaia');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Niterói');
INSERT INTO tb_regiao (nome_regiao) VALUES ('Abaetetuba');

--Endereco Cliente
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Distrito São João da Reserva', '45', '96170-978', 'Casa F', 'São João da Reserva', 1, 6);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Avenida Silvestre Péricles', '87', '57690-970', 'Casa A', 'Centro', 2, 7);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Coronel Gomes Machado', '132', '24020-065', 'apto 802', 'Centro', 3, 8);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Siqueira Mendes', '1278', '68440-970', 'Casa C', 'Abaetetuba', 4, 9);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Aracy Grubide', '17', '42700-973', 'Quadra 05', 'Itinga', 5, 2);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Dr. Raimundo Magaldi', '56', '41760-020', 'Apto 303', 'Costa Azul', 6, 1);

--Endereco Imovel
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Travessa Jardim América', '144', '41810-320', 'Apto 303', 'Pituba', null, 1);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Manoel Coelho', '85', '42835-971', 'Casa D', 'Centro', null, 3);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua São Braz', '55', '40230-725', 'Apt 104', 'Federação', null, 1);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Praça Pedro Gomes', '129', '42600-970', 'Casa A', 'Centro', null, 5);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua Santa Helena', '43', '42600-970', 'Casa E', 'Apicum', null, 5);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Avenida Praia de Copacabana', '720', '42707-210', 'Bloco B', 'Vilas do Atlântico', null, 2);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Avenida Brigadeiro Mário Epingaus', '35', '42700-971', 'apto 607', 'Centro', null, 2);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Alameda dos Pescadores', '202', '48280-971', 'Casa C', 'Praia do Forte', null, 4);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Rua da Glória', '32', '42835-971', 'Bloco A', 'Abrantes', null, 3);
INSERT INTO tb_endereco (logradouro, numero, cep, complemento, bairro, id_cliente, id_regiao) VALUES ('Avenida Cardeal da Silva', '220', '40231-250', 'Apto 702', 'Federação', null, 1);

--Corretor
INSERT INTO tb_corretor (nome, email, telefone, cpf, creci, login, senha) VALUES ('Erick Paulo Valansuela', 'erick.paulo@geradornv.com.br', '(69)2210-1607', '564.217.412-66', 152150, 'erick.paulo@geradornv.com.br', 'fkwt5T77MM');
INSERT INTO tb_corretor (nome, email, telefone, cpf, creci, login, senha) VALUES ('Cristiane Paiva Alentejo', 'cristiane@geradornv.com.br', '(94) 3187-1581', '139.646.862-55', 314225, 'cristiane@geradornv.com.br', 'GA9T&HEk_*uy');
INSERT INTO tb_corretor (nome, email, telefone, cpf, creci, login, senha) VALUES ('Viviane Amancio Chiles', 'viviane@geradornv.com.br', '(47)2807-5145', '494.963.239-60', 684168, 'viviane@geradornv.com.br', '7oc9Zk(sqcC7');
INSERT INTO tb_corretor (nome, email, telefone, cpf, creci, login, senha) VALUES ('Mônica Jales Alfradique', 'monica@geradornv.com.br', '(69)2210-1607', '150.077.372-75', 598812, 'monica@geradornv.com.br', 'texugoSocialista090');

--Proprietario
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Gael Juan Duarte', 'gael-duarte91@gmail.com.br', '(71) 98594-9320', '934.596.365-05');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Maria Isadora Barros', 'maria_barros@gmail.com.br', '(71) 99234-9500', '382.425.175-25');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Bianca Ayla Clarice Moura', 'bianca_moura@gmail.com.br', '(75) 99982-8246', '541.438.945-48');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Benício Yuri Duarte', 'benicio.yuri.duarte@gmail.com.br', '(71) 98857-8253', '168.861.585-70');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Iago Daniel Diogo Ramos', 'iago_ramos@gmail.com.br', '(71) 98110-8879', '777.004.825-78');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Gabrielly Stella Mariah Mendes', 'gabrielly_stella_mendes@gmail.com.br', '(71) 99352-2072', '255.866.915-07');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Benjamin Heitor Almada', 'benjamin_heitor_almada@gmail.com.br', '(71) 98539-7836', '258.963.085-90');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Antonio Theo Nicolas Silveira', 'antonio_silveira@gmail.com.br', '(71) 99278-9128', '983.367.995-16');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Manuel Daniel Aragão', 'manueldanaragao@gmail.com.br', '(73) 99272-8236', '254.320.085-13');
INSERT INTO tb_proprietario (nome, email, telefone, cpf) VALUES ('Elaine Tatiane Corte Real', 'elaine_tatiane_cortereal@gmail.com.br', '(71) 99979-6169', '800.793.215-18');

--Categoria Imovel
insert into tb_cat_imov (nome_cat) values ('Apartamento');
insert into tb_cat_imov (nome_cat) values ('Casa');
insert into tb_cat_imov (nome_cat) values ('Comercial');
insert into tb_cat_imov (nome_cat) values ('Studio');
insert into tb_cat_imov (nome_cat) values ('Terreno');
insert into tb_cat_imov (nome_cat) values ('Fazenda');

--Imagens
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
INSERT INTO tb_imagens (end_img) values (bytea('foto'));
--Galeria
INSERT INTO tb_galeria (nome_gal) values ('Galeria Apt Pituba');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Casa 1 Centro');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Apt 1 Federação');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Casa 2 Centro');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Apicum');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Casa Vilas');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Apt Centro');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Casa PF');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Terreno Abrantes');
INSERT INTO tb_galeria (nome_gal) values ('Galeria Apt 2 Federação');

-- Fts_imov (ligação da imagem com a sua galeria)
--Apt Pituba
INSERT INTO tb_fts_imov (id_galeria, id_img) values (1, 1);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (1, 2);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (1, 3);
-- Casa 1 Centro
INSERT INTO tb_fts_imov (id_galeria, id_img) values (2, 4);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (2, 5);
-- Apt 1 Federação
INSERT INTO tb_fts_imov (id_galeria, id_img) values (3, 6);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (3, 7);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (3, 8);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (3, 9);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (3, 10);
-- Casa 2 Centro
INSERT INTO tb_fts_imov (id_galeria, id_img) values (4, 11);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (4, 12);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (4, 13);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (4, 14);
-- Apicum
INSERT INTO tb_fts_imov (id_galeria, id_img) values (5, 15);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (5, 16);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (5, 17);
-- Vilas
INSERT INTO tb_fts_imov (id_galeria, id_img) values (6, 18);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (6, 19);
-- Apt Centro
INSERT INTO tb_fts_imov (id_galeria, id_img) values (7, 20);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (7, 21);
-- Casa PF
INSERT INTO tb_fts_imov (id_galeria, id_img) values (8, 22);
-- Terreno Abrantes
INSERT INTO tb_fts_imov (id_galeria, id_img) values (9, 23);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (9, 24);
-- Apt 2 Federação
INSERT INTO tb_fts_imov (id_galeria, id_img) values (10, 25);
INSERT INTO tb_fts_imov (id_galeria, id_img) values (10, 26);

--Imovel
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('03/09/2023',4,3,2,120,120,12000.00,1400.00,1570000.00,1,1,1,1,7);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('12/04/2023',3,3,3,150,120,800.00,100.00,450000.00,2,2,3,2,8);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('23/05/2023',3,2,2,100,100,3800.00,1000.00,670000.00,3,1,1,3,9);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('08/02/2023',2,3,2,120,105,500.00,140.00,375000.00,4,2,5,4,10);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('15/12/2023',3,4,2,160,130,980.00,300.00,525000.00,5,2,5,5,11);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('09/06/2023',5,4,4,380,290,3980.00,600.00,980000.00,6,2,2,6,12);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('03/06/2023',2,2,2,95,95,1100.00,450.00,45000.00,7,1,2,7,13);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('30/05/2023',5,6,5,500,415,8740.00,2150.00,3200000.00,8,4,4,8,14);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('27/01/2023',0,0,0,1100,0,340.00,150.00,190000.00,9,5,3,9,15);
INSERT INTO tb_imovel (dt_cadastro, quartos, banheiros, vagas, area_total, area_constr, valor_iptu, valor_cond, valor_imov, id_fts_imov, id_catimov, id_regiao, id_prop, id_end)
VALUES ('22/04/2023',4,3,2,125,125,1210.00,610.00,620000.00,10,1,1,10,16);

--Visita
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('13/09/2023', 2, 1, 1);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('10/05/2023', 2, 2, 2);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('25/09/2023', 3, 1, 3);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('28/02/2023', 4, 4, 4);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('15/01/2023', 5, 5, 3);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('04/06/2023', 6, 8, 2);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('15/06/2023', 2, 7, 3);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('13/06/2023', 1, 8, 1);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('29/01/2023', 3, 9, 2);
INSERT INTO tb_visita (dt_visita, id_cliente, id_imov, id_corretor) VALUES ('02/05/2023', 4, 10, 3);


--Forma de Pagamento
INSERT INTO tb_forma_pagamento (forma_pag) VALUES ('A VISTA');
INSERT INTO tb_forma_pagamento (forma_pag) VALUES ('FINANCIADO');

--Contrato

INSERT INTO tb_contrato (certidao_neg, dt_contrato, id_formapag, id_corretor, id_cliente, id_imov) VALUES ('V', '03/06/2023', 1, 1, 1, 8);
INSERT INTO tb_contrato (certidao_neg, dt_contrato, id_formapag, id_corretor, id_cliente, id_imov) VALUES ('V', '12/05/2023', 1, 3, 4, 10);
INSERT INTO tb_contrato (certidao_neg, dt_contrato, id_formapag, id_corretor, id_cliente, id_imov) VALUES ('V', '30/01/2023', 2, 2, 3, 9);
INSERT INTO tb_contrato (certidao_neg, dt_contrato, id_formapag, id_corretor, id_cliente, id_imov) VALUES ('V', '03/02/2023', 2, 3, 3, 1);
INSERT INTO tb_contrato (certidao_neg, dt_contrato, id_formapag, id_corretor, id_cliente, id_imov) VALUES ('V', '15/01/2023', 2, 3, 5, 5);