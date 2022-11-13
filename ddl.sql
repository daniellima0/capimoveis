--SHOW DATESTYLE;
--ALTER DATABASE portal SET datestyle TO ISO, DMY;
create table tb_cliente (
    id_cliente serial,
    nome varchar(30) not null,
    email varchar(30) not null UNIQUE,
    telefone varchar(15) not null UNIQUE,
    cpf varchar(14) not null UNIQUE,
    PRIMARY KEY(id_cliente)
);

create table tb_regiao (
    id_regiao serial,
    nome_regiao varchar(25) not null,
    PRIMARY KEY(id_regiao)
);

create table tb_endereco (
    id_end serial,
    logradouro varchar(40) not null,
    numero varchar(5) not null,
    cep varchar(9) not null,
    complemento varchar(20) not null,
    bairro varchar(30) not null,
    id_cliente int,
    id_regiao int not null,
    PRIMARY KEY(id_end),
    CONSTRAINT fk_end_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente),
    CONSTRAINT fk_end_regiao FOREIGN KEY(id_regiao) REFERENCES tb_regiao(id_regiao)
);

create table tb_corretor (
    id_corretor serial,
    nome varchar(40) not null,
    email varchar(40) not null UNIQUE,
    telefone varchar(15) not null,
    cpf varchar(14) not null UNIQUE,
    creci int not null UNIQUE,
    login varchar(40) not null UNIQUE,
    senha varchar(30) not null,
    PRIMARY KEY(id_corretor)
);

create table tb_proprietario (
    id_prop serial,
    nome varchar(40) not null,
    email varchar(40) not null UNIQUE,
    telefone varchar(15) not null,
    cpf varchar(14) not null UNIQUE,
    PRIMARY KEY(id_prop)
);

create table tb_cat_imov (
    id_catimov serial,
    nome_cat varchar(40) not null,
    PRIMARY KEY(id_catimov)
);

create table tb_imagens (
    id_img serial,
    end_img bytea,
    PRIMARY KEY(id_img)
);

create table tb_galeria (
    id_galeria serial,
    nome_gal varchar(40) not null UNIQUE,
    PRIMARY KEY(id_galeria)
);

create table tb_fts_imov (
    id_fts_imov serial,
    id_galeria int not null,
    id_img int not null,
    PRIMARY KEY(id_fts_imov),
    CONSTRAINT fk_fts_imov_galeria FOREIGN KEY(id_galeria) REFERENCES tb_galeria(id_galeria),
    CONSTRAINT fk_fts_imov_img FOREIGN KEY(id_img) REFERENCES tb_imagens(id_img)
);

create table tb_imovel (
    id_imov serial,
    dt_cadastro date not null check(dt_cadastro >= CURRENT_DATE),
    quartos int not null,
    banheiros int not null,
    vagas int not null,
    area_total int not null,
    area_constr int not null,
    valor_iptu numeric(9, 2) not null,
    valor_cond numeric(9, 2) not null,
    valor_imov numeric(9, 2) not null,
    id_fts_imov int not null,
    id_catimov int not null,
    id_regiao int not null,
    id_prop int not null,
    id_end int not null,
    PRIMARY KEY(id_imov),
    CONSTRAINT fk_imov_fts_imov FOREIGN KEY(id_fts_imov) REFERENCES tb_fts_imov(id_fts_imov),
    CONSTRAINT fk_imov_cat_imov FOREIGN KEY(id_catimov) REFERENCES tb_cat_imov(id_catimov),
    CONSTRAINT fk_imov_regiao FOREIGN KEY(id_regiao) REFERENCES tb_regiao(id_regiao),
    CONSTRAINT fk_imov_prop FOREIGN KEY(id_prop) REFERENCES tb_proprietario(id_prop),
    CONSTRAINT fk_imov_end FOREIGN KEY(id_end) REFERENCES tb_endereco(id_end)
);

create table tb_visita (
    id_visita serial,
    dt_visita date not null check(dt_visita >= CURRENT_DATE),
    id_cliente int,
    id_imov int,
    id_corretor int,
    PRIMARY KEY(id_visita),
    CONSTRAINT fk_visita_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente),
    CONSTRAINT fk_visita_imov FOREIGN KEY(id_imov) REFERENCES tb_imovel(id_imov),
    CONSTRAINT fk_visita_corretor FOREIGN KEY(id_corretor) REFERENCES tb_corretor(id_corretor)
);

create table tb_forma_pagamento (
    id_formapag serial,
    forma_pag varchar(20) not null check(forma_pag in ('A VISTA', 'FINANCIADO')),
    PRIMARY KEY(id_formapag)
);

create table tb_contrato (
    id_contrato serial,
    certidao_neg char(1) not null check(certidao_neg in ('V', 'F')),
    dt_contrato date not null check(dt_contrato >= CURRENT_DATE),
    id_formapag int not null,
    id_corretor int not null,
    id_cliente int not null,
    id_imov int not null,
    PRIMARY KEY(id_contrato),
    CONSTRAINT fk_contrato_formapag FOREIGN KEY(id_formapag) REFERENCES tb_forma_pagamento(id_formapag),
    CONSTRAINT fk_contrato_corretor FOREIGN KEY(id_corretor) REFERENCES tb_corretor(id_corretor),
    CONSTRAINT fk_contrato_cliente FOREIGN KEY(id_cliente) REFERENCES tb_cliente(id_cliente),
    CONSTRAINT fk_contrato_imov FOREIGN KEY(id_imov) REFERENCES tb_imovel(id_imov)
);

create table tb_comissao (
    id_comissao serial,
    id_corretor int,
    valor_comissao numeric(9, 2) not null,
    dt_comissao date not null check(dt_comissao >= CURRENT_DATE),
    PRIMARY KEY(id_comissao),
    CONSTRAINT fk_comissao_corretor FOREIGN KEY(id_corretor) REFERENCES tb_corretor(id_corretor)
);