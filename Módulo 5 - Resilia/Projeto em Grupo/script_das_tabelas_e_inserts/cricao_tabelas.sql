-- criação das tabelas
CREATE TABLE tb_criptomoedas (
    id integer,
    nome character varying,
    simbolo character varying,
    data date,
    alto double precision,
    baixo double precision,
    abertura double precision,
    fechamento double precision,
    volume double precision,
    capitalizacao_de_mercado double precision
);