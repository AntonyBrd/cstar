CREATE DATABASE CSTAR;

--RAWDATA to store logs without structure. Parsing will be done on Python
CREATE TABLE RAWDATA(
    LOG_ID               VARCHAR(10) NOT NULL PRIMARY KEY,
    LOG                  TEXT        NOT NULL,
    CREATION_TIME        TIMESTAMP   NOT NULL,
    UPD_TIME             TIMESTAMP   NOT NULL
);

-- Once feature are computed, we store them in this table
CREATE TABLE USER_FEATURES(
    USER_ID           VARCHAR(36)    NOT NULL PRIMARY KEY,
    Nb_logs              INTEGER     NOT NULL,
    Nb_weekend           INTEGER     NOT NULL,
    Nb_badport           INTEGER     NOT NULL,
    Nb_cat_adv           INTEGER     NOT NULL,
    Nb_cat_gamb          INTEGER     NOT NULL,
    Nb_cat_hack          INTEGER     NOT NULL,
    Nb_cat_ilac          INTEGER     NOT NULL,
    Nb_cat_susp          INTEGER     NOT NULL,
    Nb_cat_p2p           INTEGER     NOT NULL,
    Nb_cat_mail          INTEGER     NOT NULL,
    Nb_cat_park          INTEGER     NOT NULL,
    Nb_cat_infr          INTEGER     NOT NULL,
    Nb_POST              INTEGER     NOT NULL,
    Nb_mime_APPL         INTEGER     NOT NULL,
    Nb_mine_APPL_stream  INTEGER     NOT NULL,
    Nb_URL_tunnel        INTEGER     NOT NULL,
    Nb_Code200           INTEGER     NOT NULL,
    Nb_Code401           INTEGER     NOT NULL,
    Nb_Code403           INTEGER     NOT NULL,
    Nb_Code404           INTEGER     NOT NULL,
    Nb_Code407           INTEGER     NOT NULL,
    Nb_Code500           INTEGER     NOT NULL,
    Nb_Code501           INTEGER     NOT NULL,
    Max_duration         INTEGER     NOT NULL,
    Max_request          INTEGER     NOT NULL,
    Max_responsesize     INTEGER     NOT NULL,
    Nb_error_code        INTEGER     NOT NULL,
    Total_duration       INTEGER     NOT NULL,
    Total_request        INTEGER     NOT NULL,
    Total_responsesize   INTEGER     NOT NULL,
    Nb_block_admin       INTEGER     NOT NULL,
    Nb_mine_APPL_stream  INTEGER     NOT NULL,
    Nb_ip_in_url         INTEGER     NOT NULL,
    Nb_TCP_miss          INTEGER     NOT NULL,
    CREATION_TIME        TIMESTAMP   NOT NULL,
    UPD_TIME             TIMESTAMP   NOT NULL
);


CREATE TABLE ACP_COORDONATES(
    USER_ID            VARCHAR(36)    NOT NULL PRIMARY KEY,
    AXE_1              FLOAT4         NOT NULL,
    AXE_2              FLOAT4         NOT NULL,
    AXE_3              FLOAT4         NOT NULL,
    AXE_4              FLOAT4         NOT NULL,
    CLUSTER            VARCHAR(10)    NOT NULL,
    CREATION_TIME      TIMESTAMP      NOT NULL,
    UPD_TIME           TIMESTAMP      NOT NULL
);

CREATE TABLE ANOMALIES(
    USER_ID                    varchar(36)    NOT NULL PRIMARY KEY,
    DISTANCE_TO_CENTER         varchar(36)    NOT NULL,
    MOST_DISTANT_FEATURE       varchar(36)    NOT NULL
);



