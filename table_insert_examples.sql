-- Jogadores
INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (0, 'Goku', 10);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (0, 9999, 50000);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (1, 'Gohan', 8);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (1, 7000, 200000);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (2, 'Vegeta', 9);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (2, 8000, 500000);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (3, 'Piccolo', 6);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (3, 6500, 20000);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (4, 'Kuririn', 4);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (4, 5000, 40000);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (5, 'Broli', 17);
INSERT INTO Jogador(id_jogador, XP, gold) VALUES (5, 10000, 1000);

-- NPCs
INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (6, 'Yoda', 4);
INSERT INTO NPC(id_NPC) VALUES (6);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (7, 'Mestre dos Magos', 7);
INSERT INTO NPC(id_NPC) VALUES (7);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (8, 'Gandalf', 10);
INSERT INTO NPC(id_NPC) VALUES (8);

INSERT INTO Personagem(id_personagem, nome, nivel) VALUES (9, 'Dumbledore', 3);
INSERT INTO NPC(id_NPC) VALUES (9);

-- Ataques
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (0, 0, 1);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (0, 1, 0);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (0, 2, 0);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (0, 4, 2);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (1, 5, 0);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (1, 3, 5);
INSERT INTO Ataque(turno, id_atacante, id_atacado) VALUES (1, 2, 5);

-- Armas
INSERT INTO Arma(nome, ataque, elemento) VALUES ('Espada', 10, 'Normal');
INSERT INTO Arma(nome, ataque, elemento) VALUES ('Arco', 7, 'Raio');
INSERT INTO Arma(nome, ataque, elemento) VALUES ('Machado', 18, 'Gelo');
INSERT INTO Arma(nome, ataque, elemento) VALUES ('Cajado', 5, 'Fogo');
INSERT INTO Arma(nome, ataque, elemento) VALUES ('Adaga', 8, 'Agua');

-- Armaduras
INSERT INTO Armadura(nome, defesa, tipo) VALUES ('Thor', 30, 'Raio');
INSERT INTO Armadura(nome, defesa, tipo) VALUES ('Loki', 35, 'Gelo');
INSERT INTO Armadura(nome, defesa, tipo) VALUES ('Odin', 45, 'Raio');
INSERT INTO Armadura(nome, defesa, tipo) VALUES ('Freya', 50, 'Planta');
INSERT INTO Armadura(nome, defesa, tipo) VALUES ('Ragnarok', 70, 'Fogo');

-- Sets
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (0, 'Espada', 'Ragnarok');
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (1, 'Arco', 'Odin');
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (2, 'Espada', 'Loki');
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (3, 'Cajado', 'Freya');
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (4, 'Adaga', 'Thor');
INSERT INTO UsaSet(id_jogador, nome_arma, nome_armadura) VALUES (5, 'Espada', 'Ragnarok');

-- Pets
INSERT INTO Pet(id_dono, nome, ataque) VALUES (0, 'Charmander', 12);
INSERT INTO Elemento(id_dono, nome_pet, nome_elemento) VALUES (0, 'Charmander', 'Fogo');

INSERT INTO Pet(id_dono, nome, ataque) VALUES (1, 'Bulbasauro', 12);
INSERT INTO Elemento(id_dono, nome_pet, nome_elemento) VALUES (1, 'Bulbasauro', 'Planta');

INSERT INTO Pet(id_dono, nome, ataque) VALUES (2, 'Squirtle', 12);
INSERT INTO Elemento(id_dono, nome_pet, nome_elemento) VALUES (2, 'Squirtle', 'Agua');

INSERT INTO Pet(id_dono, nome, ataque) VALUES (1, 'Pikachu', 13);
INSERT INTO Elemento(id_dono, nome_pet, nome_elemento) VALUES (1, 'Pikachu', 'Raio');

-- Missões
INSERT INTO Missao(nome, ambiente, dificuldade, tempo_max, id_NPC) VALUES ('Cataclismo', 'Vulcao', 2, 20, 6);
INSERT INTO Missao(nome, ambiente, dificuldade, tempo_max, id_NPC) VALUES ('Vale da Morte', 'Cemiterio', 3, 30, 7);
INSERT INTO Missao(nome, ambiente, dificuldade, tempo_max, id_NPC) VALUES ('Caminho Alado', 'Nuvens', 5, 30, 8);
INSERT INTO Missao(nome, ambiente, dificuldade, tempo_max, id_NPC) VALUES ('Trono de Ferro', 'Castelo', 7, 40, 9);

INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (0, 1, 15, 100, 1000);
INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (1, 2, 18, 200, 2000);
INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (2, 3, 25, 300, 3000);
INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (3, 4, 37, 400, 4000);
INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (4, 5, 60, 750, 10000);
INSERT INTO Recompensa(id_recompensa, status_recompensa, duracao, XP, gold) VALUES (5, 6, 90, 1500, 20000);

INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Cataclismo', 0, to_date ('02/01/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Vale da Morte', 1, to_date ('17/09/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Vale da Morte', 2, to_date ('27/06/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Caminho Alado', 3, to_date ('03/07/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Caminho Alado', 4, to_date ('28/10/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Trono de Ferro', 4, to_date ('01/08/2017', 'dd/mm/yyyy'));
INSERT INTO Prove(nome_missao, id_recompensa, data_prove) VALUES ('Trono de Ferro', 5, to_date ('01/04/2017', 'dd/mm/yyyy'));