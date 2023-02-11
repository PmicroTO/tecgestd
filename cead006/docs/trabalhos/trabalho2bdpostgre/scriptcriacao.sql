-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION postgres;

COMMENT ON SCHEMA public IS 'standard public schema';
-- public.cliente definition

-- Drop table

-- DROP TABLE public.cliente;

CREATE TABLE public.cliente (
	cpfcli numeric(11) NOT NULL,
	telefone numeric(14) NOT NULL,
	cep numeric(8) NOT NULL,
	estado varchar(50) NOT NULL,
	cidade varchar(50) NOT NULL,
	rua varchar(50) NOT NULL,
	numero varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (cpfcli)
);

-- Permissions

ALTER TABLE public.cliente OWNER TO lucio;
GRANT ALL ON TABLE public.cliente TO lucio;


-- public.mercado definition

-- Drop table

-- DROP TABLE public.mercado;

CREATE TABLE public.mercado (
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

ALTER TABLE public.mercado OWNER TO lucio;
GRANT ALL ON TABLE public.mercado TO lucio;


-- public.entrega definition

-- Drop table

-- DROP TABLE public.entrega;

CREATE TABLE public.entrega (
	codentrega int8 NOT NULL,
	tipo varchar(10) NOT NULL, -- app ou mercado
	placa bpchar(7) NULL, -- Caso seja pelo app.
	telefone numeric(14) NULL, -- Telefone do entregador caso seja pelo app.
	hrsaida timestamp NOT NULL,
	hrchegada timestamp NULL, -- Null pois pode ser que nao chegue.
	CONSTRAINT entrega_pk PRIMARY KEY (codentrega)
);
COMMENT ON TABLE public.entrega IS 'Livro Base, pag 156, 5.2.8,implementação de generalização/especialização, uma tabela por hierarquia.

Tipo de entrega, do app ou propria do mercado.
Placa de veiculo e Telefone do entregador sendo Null, preenchidos caso seja entrega do app.';

-- Column comments

COMMENT ON COLUMN public.entrega.tipo IS 'app ou mercado';
COMMENT ON COLUMN public.entrega.placa IS 'Caso seja pelo app.';
COMMENT ON COLUMN public.entrega.telefone IS 'Telefone do entregador caso seja pelo app.';
COMMENT ON COLUMN public.entrega.hrchegada IS 'Null pois pode ser que nao chegue.';

-- Permissions

ALTER TABLE public.entrega OWNER TO lucio;
GRANT ALL ON TABLE public.entrega TO lucio;


-- public.lista definition

-- Drop table

-- DROP TABLE public.lista;

CREATE TABLE public.lista (
	codlista int8 NOT NULL,
	"data" timestamp NOT NULL,
	valor money NOT NULL DEFAULT 0.00,
	CONSTRAINT lista_pk PRIMARY KEY (codlista)
);

-- Permissions

ALTER TABLE public.lista OWNER TO lucio;
GRANT ALL ON TABLE public.lista TO lucio;


-- public.contrato definition

-- Drop table

-- DROP TABLE public.contrato;

CREATE TABLE public.contrato (
	codentrega int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	CONSTRAINT contrato_pk PRIMARY KEY (codentrega, cnpjmer),
	CONSTRAINT contrato_fk FOREIGN KEY (cnpjmer) REFERENCES public.mercado(cnpjmer),
	CONSTRAINT contrato_fk_1 FOREIGN KEY (codentrega) REFERENCES public.entrega(codentrega)
);
COMMENT ON TABLE public.contrato IS 'Livro Base pag 154. 5.2.6, relacionamentos n:n.';

-- Permissions

ALTER TABLE public.contrato OWNER TO lucio;
GRANT ALL ON TABLE public.contrato TO lucio;


-- public.produto definition

-- Drop table

-- DROP TABLE public.produto;

CREATE TABLE public.produto (
	cnpjmer numeric(14) NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	nome varchar(50) NOT NULL,
	valor money NOT NULL,
	CONSTRAINT produto_pk PRIMARY KEY (cnpjmer, codprod),
	CONSTRAINT produto_fk FOREIGN KEY (cnpjmer) REFERENCES public.mercado(cnpjmer)
);

-- Column comments

COMMENT ON COLUMN public.produto.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE public.produto OWNER TO lucio;
GRANT ALL ON TABLE public.produto TO lucio;


-- public.promocao definition

-- Drop table

-- DROP TABLE public.promocao;

CREATE TABLE public.promocao (
	codprom int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	nome varchar(50) NOT NULL,
	CONSTRAINT promocao_pk PRIMARY KEY (codprom, cnpjmer),
	CONSTRAINT promocao_fk FOREIGN KEY (cnpjmer) REFERENCES public.mercado(cnpjmer)
);

-- Permissions

ALTER TABLE public.promocao OWNER TO lucio;
GRANT ALL ON TABLE public.promocao TO lucio;


-- public.prodpromocao definition

-- Drop table

-- DROP TABLE public.prodpromocao;

CREATE TABLE public.prodpromocao (
	codprom int8 NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	cnpjmer numeric(14) NOT NULL,
	quantia int4 NOT NULL,
	desconto money NOT NULL,
	CONSTRAINT promocaoprod_pk PRIMARY KEY (codprom, codprod, cnpjmer),
	CONSTRAINT promocaoprod_fk FOREIGN KEY (codprom,cnpjmer) REFERENCES public.promocao(codprom,cnpjmer),
	CONSTRAINT promocaoprod_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES public.produto(cnpjmer,codprod)
);
COMMENT ON TABLE public.prodpromocao IS 'Separado pela impossibilidade de multivalor na abordagem relacional.';

-- Column comments

COMMENT ON COLUMN public.prodpromocao.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE public.prodpromocao OWNER TO lucio;
GRANT ALL ON TABLE public.prodpromocao TO lucio;


-- public.oferta definition

-- Drop table

-- DROP TABLE public.oferta;

CREATE TABLE public.oferta (
	codprom int8 NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	cnpjmer numeric(14) NOT NULL,
	CONSTRAINT oferta_pk PRIMARY KEY (codprom, codprod, cnpjmer),
	CONSTRAINT oferta_fk FOREIGN KEY (cnpjmer) REFERENCES public.mercado(cnpjmer),
	CONSTRAINT oferta_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES public.produto(cnpjmer,codprod),
	CONSTRAINT oferta_fk_2 FOREIGN KEY (codprom,cnpjmer) REFERENCES public.promocao(codprom,cnpjmer)
);
COMMENT ON TABLE public.oferta IS 'Livro Base pag 154. 5.2.7, relacionamentos de gau maior que 2.';

-- Column comments

COMMENT ON COLUMN public.oferta.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE public.oferta OWNER TO lucio;
GRANT ALL ON TABLE public.oferta TO lucio;


-- public.historico definition

-- Drop table

-- DROP TABLE public.historico;

CREATE TABLE public.historico (
	codhist int8 NOT NULL,
	cpfcli numeric(11) NOT NULL,
	valorgasto money NOT NULL DEFAULT 0.00,
	CONSTRAINT historico_pk PRIMARY KEY (codhist),
	CONSTRAINT historico_fk FOREIGN KEY (cpfcli) REFERENCES public.cliente(cpfcli)
);
COMMENT ON TABLE public.historico IS 'Historico do cliente, subdividido em mais duas partes, Produtos e Promocoes do historico.';

-- Permissions

ALTER TABLE public.historico OWNER TO lucio;
GRANT ALL ON TABLE public.historico TO lucio;


-- public.histprod definition

-- Drop table

-- DROP TABLE public.histprod;

CREATE TABLE public.histprod (
	codhist int8 NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	quantia int4 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	CONSTRAINT histprod_pk PRIMARY KEY (cnpjmer, codprod, codhist),
	CONSTRAINT histprod_fk FOREIGN KEY (codhist) REFERENCES public.historico(codhist),
	CONSTRAINT histprod_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES public.produto(cnpjmer,codprod)
);

-- Column comments

COMMENT ON COLUMN public.histprod.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE public.histprod OWNER TO lucio;
GRANT ALL ON TABLE public.histprod TO lucio;


-- public.histprom definition

-- Drop table

-- DROP TABLE public.histprom;

CREATE TABLE public.histprom (
	codprom int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	codhist int8 NOT NULL,
	quantia int4 NOT NULL,
	CONSTRAINT histprom_pk PRIMARY KEY (codprom, cnpjmer, codhist),
	CONSTRAINT histprom_fk FOREIGN KEY (codprom,cnpjmer) REFERENCES public.promocao(codprom,cnpjmer),
	CONSTRAINT histprom_fk_1 FOREIGN KEY (codhist) REFERENCES public.historico(codhist)
);

-- Permissions

ALTER TABLE public.histprom OWNER TO lucio;
GRANT ALL ON TABLE public.histprom TO lucio;


-- public.listaprod definition

-- Drop table

-- DROP TABLE public.listaprod;

CREATE TABLE public.listaprod (
	codlista int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	codprod numeric(13) NOT NULL, -- Codigo de barras, porem o nome CodProd facilita identificacao como FK.
	quantia int4 NOT NULL,
	CONSTRAINT listaprod_pk PRIMARY KEY (codlista, cnpjmer, codprod),
	CONSTRAINT listaprod_fk FOREIGN KEY (codlista) REFERENCES public.lista(codlista),
	CONSTRAINT listaprod_fk_1 FOREIGN KEY (cnpjmer,codprod) REFERENCES public.produto(cnpjmer,codprod)
);

-- Column comments

COMMENT ON COLUMN public.listaprod.codprod IS 'Codigo de barras, porem o nome CodProd facilita identificacao como FK.';

-- Permissions

ALTER TABLE public.listaprod OWNER TO lucio;
GRANT ALL ON TABLE public.listaprod TO lucio;


-- public.listaprom definition

-- Drop table

-- DROP TABLE public.listaprom;

CREATE TABLE public.listaprom (
	codlista int8 NOT NULL,
	codprom int8 NOT NULL,
	cnpjmer numeric(14) NOT NULL,
	quantia int4 NOT NULL,
	CONSTRAINT listaprom_pk PRIMARY KEY (codlista, codprom, cnpjmer),
	CONSTRAINT listaprom_fk FOREIGN KEY (codprom,cnpjmer) REFERENCES public.promocao(codprom,cnpjmer),
	CONSTRAINT listaprom_fk_1 FOREIGN KEY (codlista) REFERENCES public.lista(codlista)
);

-- Permissions

ALTER TABLE public.listaprom OWNER TO lucio;
GRANT ALL ON TABLE public.listaprom TO lucio;


-- public.registra definition

-- Drop table

-- DROP TABLE public.registra;

CREATE TABLE public.registra (
	codlista int8 NOT NULL,
	codhist int8 NOT NULL,
	cpfcli numeric(11) NOT NULL,
	CONSTRAINT registra_pk PRIMARY KEY (codlista, codhist, cpfcli),
	CONSTRAINT registra_fk FOREIGN KEY (cpfcli) REFERENCES public.cliente(cpfcli),
	CONSTRAINT registra_fk_1 FOREIGN KEY (codlista) REFERENCES public.lista(codlista),
	CONSTRAINT registra_fk_2 FOREIGN KEY (codhist) REFERENCES public.historico(codhist)
);
COMMENT ON TABLE public.registra IS 'Livro Base pag 154. 5.2.7, relacionamentos de gau maior que 2.';

-- Permissions

ALTER TABLE public.registra OWNER TO lucio;
GRANT ALL ON TABLE public.registra TO lucio;




-- Permissions

GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

