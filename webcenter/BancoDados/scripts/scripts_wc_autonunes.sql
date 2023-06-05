-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2020-05-08 17:21:01 GFT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE imagens (
    id        INTEGER NOT NULL,
    id_finan  INTEGER NOT NULL,
    imagem    BLOB
);

ALTER TABLE imagens ADD CONSTRAINT pk_img_doc_id PRIMARY KEY ( id );

CREATE TABLE wc_fin_documentos (
    id            INTEGER NOT NULL,
    id_finan      INTEGER NOT NULL,
    id_documento  INTEGER,
    descricao     VARCHAR2(100),
    foto          BLOB
);

ALTER TABLE wc_fin_documentos ADD CONSTRAINT pk_wc_doc_id PRIMARY KEY ( id );

CREATE TABLE wc_sim_venda_finan (
    id                  INTEGER NOT NULL,
    cod_financiadora    INTEGER,
    analista_credito    VARCHAR2(50),
    status              VARCHAR2(30),
    motivo_recusa       VARCHAR2(150),
    valor_veiculo       NUMBER(9, 2),
    entrada             NUMBER(9, 2),
    valor_fin           NUMBER(9, 2),
    prazo               INTEGER,
    parcela             NUMBER(9, 2),
    tabela              VARCHAR2(30),
    coeficiente         NUMBER(2, 9),
    tipo_tabela         VARCHAR2(30),
    valor_aumento_parc  NUMBER(8, 2),
    observacoes         VARCHAR2(500),
    id_finan            INTEGER NOT NULL
);

ALTER TABLE wc_sim_venda_finan ADD CONSTRAINT pk_wc_finan_id PRIMARY KEY ( id );

CREATE TABLE wc_simulacao_venda (
    id                      INTEGER NOT NULL,
    cod_empresa             INTEGER,
    vendedor                VARCHAR2(100),
    origem                  VARCHAR2(20),
    cod_cliente             INTEGER,
    nome_cliente            VARCHAR2(100),
    fone                    VARCHAR2(11),
    cliente_cadastro        VARCHAR2(1),
    cnh                     VARCHAR2(1),
    tipo                    VARCHAR2(1),
    tipo_proposta           VARCHAR2(1),
    cod_marca               INTEGER,
    cod_produto             INTEGER,
    cod_modelo              INTEGER,
    ano_modelo              VARCHAR2(10),
    cor_externa             INTEGER,
    renavam                 VARCHAR2(30),
    chassi                  VARCHAR2(30),
    opcionais               VARCHAR2(100),
    s_valor_veic            NUMBER(9, 2),
    s_entrada               NUMBER(9, 2),
    s_valor_fin             NUMBER(9, 2),
    s_prazo                 INTEGER,
    s_parcela               NUMBER(9, 2),
    s_tabela                VARCHAR2(30),
    s_cod_fipe              VARCHAR2(30),
    s_coeficiente           NUMBER(2, 9),
    s2_valor_veic           NUMBER(9, 2),
    s2_entrada              NUMBER(9, 2),
    s2_valor_fin            NUMBER(9, 2),
    s2_entrada_1            NUMBER(9, 2),
    s_participacao          NUMBER(9, 2),
    s_despachante           NUMBER(9, 2),
    pg_contra_apresentacao  NUMBER(9, 2),
    pg_cartao               NUMBER(9, 2),
    pb_cheque               NUMBER(9, 2),
    pg_usado                NUMBER(9, 2),
    pg_outras_pg            NUMBER(9, 2),
    pg_consorcio            NUMBER(9, 2),
    pg_fin_externo          NUMBER(9, 2),
    pg_tr_usado             NUMBER(9, 2),
    pg_tr_acessorio         NUMBER(9, 2),
    pg_tr_emplacamento      NUMBER(9, 2),
    pg_tr_ipva              NUMBER(9, 2),
    pg_tr_outros            NUMBER(9, 2),
    pg_tr_hn                NUMBER(9, 2),
    cortesia                VARCHAR2(200),
    obs_cortesia            VARCHAR2(300),
    vendedor_acessorio      VARCHAR2(50),
    valor_elegivel          NUMBER(9, 2),
    taxa_zero               VARCHAR2(1),
    valor_acessorios        NUMBER(9, 2),
    gmac_plus               VARCHAR2(1),
    gmac_plus_valor         NUMBER(9, 2),
    emplacamento            NUMBER(9, 2),
    pmc                     VARCHAR2(1),
    pmc_tipo                VARCHAR2(30),
    pmc_valor               NUMBER(9, 2),
    gap                     VARCHAR2(1),
    gap_tipo                VARCHAR2(30),
    gap_valor               NUMBER(9, 2),
    siga                    VARCHAR2(1),
    siga_tipo               VARCHAR2(30),
    siga_valor              NUMBER(9, 2),
    valor_seguro            NUMBER(9, 2)
);

ALTER TABLE wc_simulacao_venda ADD CONSTRAINT wc_sim_venda_pk PRIMARY KEY ( id );

ALTER TABLE wc_sim_venda_finan
    ADD CONSTRAINT fk_id_finan FOREIGN KEY ( id_finan )
        REFERENCES wc_simulacao_venda ( id );

ALTER TABLE wc_fin_documentos
    ADD CONSTRAINT fk_id_finan_doc FOREIGN KEY ( id_finan )
        REFERENCES wc_simulacao_venda ( id );

ALTER TABLE imagens
    ADD CONSTRAINT fk_id_imagem FOREIGN KEY ( id_finan )
        REFERENCES wc_simulacao_venda ( id );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
