CREATE ROLE listapopular NOSUPERUSER NOCREATEDB NOCREATEROLE NOINHERIT NOLOGIN NOREPLICATION NOBYPASSRLS;

-- DROP SCHEMA listapopular;

CREATE SCHEMA listapopular AUTHORIZATION postgres;

COMMENT ON SCHEMA listapopular IS 'standard listapopular schema';

-- DROP SEQUENCE listapopular.contrato_codentrega_seq;

CREATE SEQUENCE listapopular.contrato_codentrega_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.contrato_codentrega_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.contrato_codentrega_seq TO lucio;

-- DROP SEQUENCE listapopular.contrato_codentrega_seq1;

CREATE SEQUENCE listapopular.contrato_codentrega_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.contrato_codentrega_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.contrato_codentrega_seq1 TO lucio;

-- DROP SEQUENCE listapopular.entrega_codentrega_seq;

CREATE SEQUENCE listapopular.entrega_codentrega_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.entrega_codentrega_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.entrega_codentrega_seq TO lucio;

-- DROP SEQUENCE listapopular.entrega_codentrega_seq1;

CREATE SEQUENCE listapopular.entrega_codentrega_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.entrega_codentrega_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.entrega_codentrega_seq1 TO lucio;

-- DROP SEQUENCE listapopular.historico_codhist_seq;

CREATE SEQUENCE listapopular.historico_codhist_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.historico_codhist_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.historico_codhist_seq TO lucio;

-- DROP SEQUENCE listapopular.historico_codhist_seq1;

CREATE SEQUENCE listapopular.historico_codhist_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.historico_codhist_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.historico_codhist_seq1 TO lucio;

-- DROP SEQUENCE listapopular.histprod_codhist_seq;

CREATE SEQUENCE listapopular.histprod_codhist_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprod_codhist_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprod_codhist_seq TO lucio;

-- DROP SEQUENCE listapopular.histprod_codhist_seq1;

CREATE SEQUENCE listapopular.histprod_codhist_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprod_codhist_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprod_codhist_seq1 TO lucio;

-- DROP SEQUENCE listapopular.histprom_codhist_seq;

CREATE SEQUENCE listapopular.histprom_codhist_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprom_codhist_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprom_codhist_seq TO lucio;

-- DROP SEQUENCE listapopular.histprom_codhist_seq1;

CREATE SEQUENCE listapopular.histprom_codhist_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprom_codhist_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprom_codhist_seq1 TO lucio;

-- DROP SEQUENCE listapopular.histprom_codprom_seq;

CREATE SEQUENCE listapopular.histprom_codprom_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprom_codprom_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprom_codprom_seq TO lucio;

-- DROP SEQUENCE listapopular.histprom_codprom_seq1;

CREATE SEQUENCE listapopular.histprom_codprom_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.histprom_codprom_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.histprom_codprom_seq1 TO lucio;

-- DROP SEQUENCE listapopular.lista_codlista_seq;

CREATE SEQUENCE listapopular.lista_codlista_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.lista_codlista_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.lista_codlista_seq TO lucio;

-- DROP SEQUENCE listapopular.lista_codlista_seq1;

CREATE SEQUENCE listapopular.lista_codlista_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.lista_codlista_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.lista_codlista_seq1 TO lucio;

-- DROP SEQUENCE listapopular.listaprod_codlista_seq;

CREATE SEQUENCE listapopular.listaprod_codlista_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprod_codlista_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprod_codlista_seq TO lucio;

-- DROP SEQUENCE listapopular.listaprod_codlista_seq1;

CREATE SEQUENCE listapopular.listaprod_codlista_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprod_codlista_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprod_codlista_seq1 TO lucio;

-- DROP SEQUENCE listapopular.listaprom_codlista_seq;

CREATE SEQUENCE listapopular.listaprom_codlista_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprom_codlista_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprom_codlista_seq TO lucio;

-- DROP SEQUENCE listapopular.listaprom_codlista_seq1;

CREATE SEQUENCE listapopular.listaprom_codlista_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprom_codlista_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprom_codlista_seq1 TO lucio;

-- DROP SEQUENCE listapopular.listaprom_codprom_seq;

CREATE SEQUENCE listapopular.listaprom_codprom_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprom_codprom_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprom_codprom_seq TO lucio;

-- DROP SEQUENCE listapopular.listaprom_codprom_seq1;

CREATE SEQUENCE listapopular.listaprom_codprom_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.listaprom_codprom_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.listaprom_codprom_seq1 TO lucio;

-- DROP SEQUENCE listapopular.oferta_codprom_seq;

CREATE SEQUENCE listapopular.oferta_codprom_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.oferta_codprom_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.oferta_codprom_seq TO lucio;

-- DROP SEQUENCE listapopular.oferta_codprom_seq1;

CREATE SEQUENCE listapopular.oferta_codprom_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.oferta_codprom_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.oferta_codprom_seq1 TO lucio;

-- DROP SEQUENCE listapopular.prodpromocao_codprom_seq;

CREATE SEQUENCE listapopular.prodpromocao_codprom_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.prodpromocao_codprom_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.prodpromocao_codprom_seq TO lucio;

-- DROP SEQUENCE listapopular.prodpromocao_codprom_seq1;

CREATE SEQUENCE listapopular.prodpromocao_codprom_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.prodpromocao_codprom_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.prodpromocao_codprom_seq1 TO lucio;

-- DROP SEQUENCE listapopular.promocao_codprom_seq;

CREATE SEQUENCE listapopular.promocao_codprom_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.promocao_codprom_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.promocao_codprom_seq TO lucio;

-- DROP SEQUENCE listapopular.promocao_codprom_seq1;

CREATE SEQUENCE listapopular.promocao_codprom_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.promocao_codprom_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.promocao_codprom_seq1 TO lucio;

-- DROP SEQUENCE listapopular.registra_codhist_seq;

CREATE SEQUENCE listapopular.registra_codhist_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.registra_codhist_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.registra_codhist_seq TO lucio;

-- DROP SEQUENCE listapopular.registra_codhist_seq1;

CREATE SEQUENCE listapopular.registra_codhist_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.registra_codhist_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.registra_codhist_seq1 TO lucio;

-- DROP SEQUENCE listapopular.registra_codlista_seq;

CREATE SEQUENCE listapopular.registra_codlista_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.registra_codlista_seq OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.registra_codlista_seq TO lucio;

-- DROP SEQUENCE listapopular.registra_codlista_seq1;

CREATE SEQUENCE listapopular.registra_codlista_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE listapopular.registra_codlista_seq1 OWNER TO lucio;
GRANT ALL ON SEQUENCE listapopular.registra_codlista_seq1 TO lucio;
-- listapopular.cliente definition

-- Drop table

-- DROP TABLE listapopular.cliente;

CREATE TABLE listapopular.cliente (
	cpfcli numeric(11) NOT NULL,
	nome varchar(50) NOT NULL,
	telefone numeric(11) NOT NULL,
	email varchar(50) NOT NULL,
	cep numeric(8) NOT NULL,
	estado varchar(50) NOT NULL,
	cidade varchar(50) NOT NULL,
	rua varchar(50) NOT NULL,
	numero varchar(50) NOT NULL,
	complemento varchar(255) NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (cpfcli),
	CONSTRAINT cliente_un UNIQUE (telefone, email)
);

-- Permissions

ALTER TABLE listapopular.cliente OWNER TO lucio;
GRANT ALL ON TABLE listapopular.cliente TO lucio;


-- listapopular.historico definition

-- Drop table

-- DROP TABLE listapopular.historico;

CREATE TABLE listapopular.historico (
	codhist bigserial NOT NULL,
	valorgasto money NOT NULL DEFAULT 0.00,
	CONSTRAINT historico_pk PRIMARY KEY (codhist)
);
COMMENT ON TABLE listapopular.historico IS 'Historico do cliente, subdividido em mais duas partes, Produtos e Promocoes do historico.';

-- Permissions

ALTER TABLE listapopular.historico OWNER TO lucio;
GRANT ALL ON TABLE listapopular.historico TO lucio;


-- listapopular.lista definition

-- Drop table

-- DROP TABLE listapopular.lista;

CREATE TABLE listapopular.lista (
	codlista bigserial NOT NULL,
	"data" timestamp NOT NULL,
	valor money NULL DEFAULT 0.00,
	CONSTRAINT lista_pk PRIMARY KEY (codlista)
);

-- Permissions

ALTER TABLE listapopular.lista OWNER TO lucio;
GRANT ALL ON TABLE listapopular.lista TO lucio;


-- listapopular.mercado definition

-- Drop table

-- DROP TABLE listapopular.mercado;

CREATE TABLE listapopular.mercado (
	cnpjmer numeric(14) NOT NULL,
	nome varchar(125) NOT NULL,
	cep numeric(8) NOT NULL,
	estado varchar(50) NOT NULL,
	cidade varchar(50) NOT NULL,
	rua varchar(50) NOT NULL,
	numero varchar(50) NOT NULL,
	CONSTRAINT mercado_pk PRIMARY KEY (cnpjmer)
);

-- Permissions

ALTER TABLE listapopular.mercado OWNER TO lucio;
GRANT ALL ON TABLE listapopular.mercado TO lucio;


-- listapopular.entrega definition

-- Drop table

-- DROP TABLE listapopular.entrega;

CREATE TABLE listapopular.entrega (
	codentrega bigserial NOT NULL,
	tipo varchar(10) NOT NULL, -- app ou mercado
	placa bpchar(7) NULL, -- Caso seja pelo app.
	telefone numeric(14) NULL, -- Telefone do entregador caso seja pelo app.
	hrsaida timestamp NOT NULL,
	hrchegada timestamp NULL, -- Null pois pode ser que nao chegue.
	codlista int8 NOT NULL,
	CONSTRAINT entrega_pk PRIMARY KEY (codentrega),
	CONSTRAINT entrega_fk FOREIGN KEY (codlista) REFERENCES listapopular.lista(codlista)
);
COMMENT ON TABLE listapopular.entrega IS 'Livro Base, pag 156, 5.2.8,implementação de generalização/especialização, uma tabela por hierarquia.

Tipo de entrega, do app ou propria do mercado.
Placa de veiculo e Telefone do entregador sendo Null, preenchidos caso seja entrega do app.';

-- Column comments

COMMENT ON COLUMN listapopular.entrega.tipo IS 'app ou mercado';
COMMENT ON COLUMN listapopular.entrega.placa IS 'Caso seja pelo app.';
COMMENT ON COLUMN listapopular.entrega.telefone IS 'Telefone do entregador caso seja pelo app.';
COMMENT ON COLUMN listapopular.entrega.hrchegada IS 'Null pois pode ser que nao chegue.';

-- Permissions

ALTER TABLE listapopular.entrega OWNER TO lucio;
GRANT ALL ON TABLE listapopular.entrega TO lucio;


-- listapopular.produto definition

-- Drop table

-- DROP TABLE listapopular.produto;

CREATE TABLE listapopular.produto (
	cnpjmer numeric(14) NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	nome varchar(50) NOT NULL,
	valor money NOT NULL,
	CONSTRAINT produto_pk PRIMARY KEY (cnpjmer, codprod),
	CONSTRAINT produto_fk FOREIGN KEY (cnpjmer) REFERENCES listapopular.mercado(cnpjmer)
);

-- Column comments

COMMENT ON COLUMN listapopular.produto.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE listapopular.produto OWNER TO lucio;
GRANT ALL ON TABLE listapopular.produto TO lucio;


-- listapopular.promocao definition

-- Drop table

-- DROP TABLE listapopular.promocao;

CREATE TABLE listapopular.promocao (
	codprom bigserial NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	nome varchar(50) NOT NULL,
	CONSTRAINT promocao_pk PRIMARY KEY (cnpjmer, codprom),
	CONSTRAINT promocao_fk FOREIGN KEY (cnpjmer) REFERENCES listapopular.mercado(cnpjmer)
);

-- Permissions

ALTER TABLE listapopular.promocao OWNER TO lucio;
GRANT ALL ON TABLE listapopular.promocao TO lucio;


-- listapopular.registra definition

-- Drop table

-- DROP TABLE listapopular.registra;

CREATE TABLE listapopular.registra (
	cpfcli numeric(11) NOT NULL,
	codlista int8 NOT NULL,
	codhist int8 NOT NULL,
	CONSTRAINT registra_pk PRIMARY KEY (cpfcli, codlista, codhist),
	CONSTRAINT registra_fk FOREIGN KEY (cpfcli) REFERENCES listapopular.cliente(cpfcli),
	CONSTRAINT registra_fk_1 FOREIGN KEY (codlista) REFERENCES listapopular.lista(codlista),
	CONSTRAINT registra_fk_2 FOREIGN KEY (codhist) REFERENCES listapopular.historico(codhist)
);
COMMENT ON TABLE listapopular.registra IS 'Livro Base pag 154. 5.2.7, relacionamentos de gau maior que 2.';

-- Permissions

ALTER TABLE listapopular.registra OWNER TO lucio;
GRANT ALL ON TABLE listapopular.registra TO lucio;


-- listapopular.contrato definition

-- Drop table

-- DROP TABLE listapopular.contrato;

CREATE TABLE listapopular.contrato (
	cnpjmer numeric(14) NOT NULL,
	codentrega int8 NOT NULL,
	CONSTRAINT contrato_fk FOREIGN KEY (cnpjmer) REFERENCES listapopular.mercado(cnpjmer),
	CONSTRAINT contrato_fk_1 FOREIGN KEY (codentrega) REFERENCES listapopular.entrega(codentrega)
);
COMMENT ON TABLE listapopular.contrato IS 'Livro Base pag 154. 5.2.6, relacionamentos n:n.';

-- Permissions

ALTER TABLE listapopular.contrato OWNER TO lucio;
GRANT ALL ON TABLE listapopular.contrato TO lucio;


-- listapopular.listaprod definition

-- Drop table

-- DROP TABLE listapopular.listaprod;

CREATE TABLE listapopular.listaprod (
	codlista int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	quantia int4 NOT NULL,
	CONSTRAINT listaprod_pk PRIMARY KEY (cnpjmer, codprod, codlista),
	CONSTRAINT listaprod_fk FOREIGN KEY (codlista) REFERENCES listapopular.lista(codlista),
	CONSTRAINT listaprod_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES listapopular.produto(cnpjmer,codprod)
);

-- Column comments

COMMENT ON COLUMN listapopular.listaprod.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE listapopular.listaprod OWNER TO lucio;
GRANT ALL ON TABLE listapopular.listaprod TO lucio;


-- listapopular.listaprom definition

-- Drop table

-- DROP TABLE listapopular.listaprom;

CREATE TABLE listapopular.listaprom (
	codlista int8 NOT NULL,
	codprom int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	quantia int4 NOT NULL,
	CONSTRAINT listaprom_pk PRIMARY KEY (cnpjmer, codprom, codlista),
	CONSTRAINT listaprom_fk FOREIGN KEY (cnpjmer,codprom) REFERENCES listapopular.promocao(cnpjmer,codprom),
	CONSTRAINT listaprom_fk_1 FOREIGN KEY (codlista) REFERENCES listapopular.lista(codlista)
);

-- Permissions

ALTER TABLE listapopular.listaprom OWNER TO lucio;
GRANT ALL ON TABLE listapopular.listaprom TO lucio;


-- listapopular.promocaoproduto definition

-- Drop table

-- DROP TABLE listapopular.promocaoproduto;

CREATE TABLE listapopular.promocaoproduto (
	codprom int8 NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	cnpjmer numeric(14) NOT NULL,
	quantia int4 NOT NULL,
	desconto money NOT NULL,
	CONSTRAINT prodpromocao_pk PRIMARY KEY (codprod, cnpjmer, codprom),
	CONSTRAINT prodpromocao_fk FOREIGN KEY (cnpjmer,codprom) REFERENCES listapopular.promocao(cnpjmer,codprom),
	CONSTRAINT promocaoprod_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES listapopular.produto(cnpjmer,codprod)
);
COMMENT ON TABLE listapopular.promocaoproduto IS 'Separado pela impossibilidade de multivalor na abordagem relacional.';

-- Column comments

COMMENT ON COLUMN listapopular.promocaoproduto.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE listapopular.promocaoproduto OWNER TO lucio;
GRANT ALL ON TABLE listapopular.promocaoproduto TO lucio;




-- Permissions

GRANT ALL ON SCHEMA listapopular TO postgres;
GRANT ALL ON SCHEMA listapopular TO listapopular;

