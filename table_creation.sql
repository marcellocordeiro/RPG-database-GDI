DROP TABLE IF EXISTS Prove;
DROP TABLE IF EXISTS Recompensa;
DROP TABLE IF EXISTS Missao;
DROP TABLE IF EXISTS NPC;
DROP TABLE IF EXISTS UsaSet;
DROP TABLE IF EXISTS Armadura;
DROP TABLE IF EXISTS Arma;
DROP TABLE IF EXISTS Elemento;
DROP TABLE IF EXISTS Pet;
DROP TABLE IF EXISTS Ataque;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Personagem;

CREATE TABLE Personagem (
    id_personagem  number,
    nome           varchar2(30) NOT NULL,
    nivel          number       NOT NULL,

    CONSTRAINT Personagem_pk PRIMARY KEY (id_personagem)
);

CREATE TABLE Jogador (
    id_jogador number,
    XP         number  NOT NULL,
    gold       number  NOT NULL,

    CONSTRAINT Jogador_pk PRIMARY KEY (id_jogador),
    CONSTRAINT Jogador_fk FOREIGN KEY (id_jogador) REFERENCES Personagem(id_personagem)
);

CREATE TABLE Ataque (
    turno       number,
    id_atacante number,
    id_atacado  number NOT NULL,

    CONSTRAINT ataque_pk      PRIMARY KEY (turno, id_atacante),
    CONSTRAINT id_atacante_fk FOREIGN KEY (id_atacante)        REFERENCES Jogador(id_jogador),
    CONSTRAINT id_atacado_fk  FOREIGN KEY (id_atacado)         REFERENCES Jogador(id_jogador)
);

CREATE TABLE Pet (
    id_dono number,
    nome    varchar2(30),
    ataque  number       NOT NULL,

    CONSTRAINT pet_pk PRIMARY KEY (id_dono, nome),
    CONSTRAINT pet_fk FOREIGN KEY (id_dono)       REFERENCES Jogador(id_jogador)
);

CREATE TABLE Elemento (
    id_dono       number,
    nome_pet      varchar2(30),
    nome_elemento varchar2(30),

    CONSTRAINT elemento_pk PRIMARY KEY (id_dono, nome_pet, nome_elemento),
    CONSTRAINT elemento_fk FOREIGN KEY (id_dono, nome_pet)                REFERENCES Pet(id_dono, nome)
);

CREATE TABLE Arma (
    nome     varchar2(30),
    ataque   number        NOT NULL,
    elemento varchar2 (30) NOT NULL,

    CONSTRAINT Arma_pk PRIMARY KEY (nome)
);

CREATE TABLE Armadura (
    nome   varchar2(30),
    defesa number       NOT NULL,
    tipo   varchar2(30) NOT NULL,

    CONSTRAINT Armadura_pk PRIMARY KEY (nome)
);

CREATE TABLE UsaSet (
    id_jogador    number,
    nome_arma     varchar2(30) NOT NULL,
    nome_armadura varchar2(30) NOT NULL,

    CONSTRAINT UsaSet_pk               PRIMARY KEY (id_jogador),
    CONSTRAINT UsaSet_id_jogador_fk    FOREIGN KEY (id_jogador)    REFERENCES Jogador(id_jogador),
    CONSTRAINT UsaSet_Nome_arma_fk     FOREIGN KEY (nome_arma)     REFERENCES Arma(nome),
    CONSTRAINT UsaSet_Nome_armadura_fk FOREIGN KEY (nome_armadura) REFERENCES Armadura(nome)
);

CREATE TABLE NPC (
    id_NPC number,

    CONSTRAINT NPC_pk PRIMARY KEY (id_NPC),
    CONSTRAINT NPC_fk FOREIGN KEY (id_NPC) REFERENCES Personagem(id_personagem)
);

CREATE TABLE Missao (
    nome        varchar2(30),
    ambiente    varchar2(30) NOT NULL,
    dificuldade number       NOT NULL,
    tempo_max   number       NOT NULL,
    id_NPC      number       NOT NULL UNIQUE,

    CONSTRAINT Missao_pk PRIMARY KEY (nome),
    CONSTRAINT Missao_fk FOREIGN KEY (id_NPC) REFERENCES NPC(id_NPC)
);

CREATE TABLE Recompensa (
    id_recompensa     number,
    status_recompensa number      NOT NULL,
    duracao           varchar2(8) NOT NULL,
    XP                number      NOT NULL,
    gold              number      NOT NULL,

    CONSTRAINT Recompensa_pk PRIMARY KEY (id_recompensa)
);

CREATE TABLE Prove (
    nome_missao   varchar2(30),
    id_recompensa number,
    data_prove    date         NOT NULL,

    CONSTRAINT prove_pk         PRIMARY KEY (nome_missao, id_recompensa),
    CONSTRAINT prove_pk         FOREIGN KEY (nome_missao)   REFERENCES Missao(nome),
    CONSTRAINT id_recompensa_fk FOREIGN KEY (id_recompensa) REFERENCES Recompensa(id_recompensa)
);