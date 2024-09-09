-- Trabalho Banco de Dados - Museu dos Games
-- Aluna: Thatiana de Assis Napolitano / RU: 4302056

-- Inserindo registros na tabela "jogo"
INSERT INTO jogo (idJogo, nome_jogo, imagem_capa, descricao, data_lancamento, numero_jogadores, classificacao_etaria)
VALUES 
    (1, 'Tunic', 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/software/switch/70010000045589/acb37bc0c52cf0efc43615d0bd5d927034e95a9409fe4a63c88bda465e5bd4ca', 'A ação-aventura é protagonizada por uma pequena raposa em um vasto mundo que lembra jogos clássicos de Zelda.', '2022-03-16', 1, 'E'),
    (2, 'New Super Mario Bros U', 'https://upload.wikimedia.org/wikipedia/en/0/03/New_Super_Mario_Bros._U_box_art.png', 'Super Mario Bros. U é um clássico jogo de plataforma com rolagem lateral, onde os jogadores controlam Mario e Luigi em uma missão para resgatar a Princesa Peach do vilão Bowser no Reino dos Cogumelos.', '2012-11-18', 4, 'E'),
    (3, 'The Legend of Zelda', 'https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg', 'The Legend of Zelda é uma série de jogos eletrônicos da Nintendo criada em 1986 por Shigeru Miyamoto e Takashi Tezuka. É centrado em jogos eletrônicos de ação-aventura e alguns elementos de RPG.', '1986-02-21', 1, 'E'),
    (4, 'Night in the Woods', 'https://upload.wikimedia.org/wikipedia/en/3/36/Night_in_the_Woods.jpg', 'Night in the Woods é um jogo de aventura. Sua história segue uma jovem chamada Mae Borowski, que abandona a faculdade e retorna para sua cidade natal para encontrar mudanças inesperadas.', '2017-02-21', 1, 'E'),
    (5, 'Tetris Effect', 'https://upload.wikimedia.org/wikipedia/en/a/ae/Tetris_Effect_cover.jpg', 'Uma versão moderna do clássico jogo de quebra-cabeça.', '2018-11-09', 1, 'E');

SELECT * FROM jogo; 
SHOW COLUMNS FROM jogo;

-- Inserindo registros na tabela "imagemgameplay"
INSERT INTO imagemgameplay (idJogo, idImagemGameplay, URL_imagem_gameplay)
VALUES 
    (1, 1, 'https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/c_scale,w_700/ncom/software/switch/70010000045589/0f4446675696483a9837cdc730738ecd2f0a2fa4159bcead836e7ccabb02751b'),
    (1, 2, 'https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/c_scale,w_1200/ncom/software/switch/70010000045589/a2d268a6232c5f2ae234d6cc3b68aca6e7c2190d482dd082f507fb09c816361b'),
    (2, 3, 'https://www.nintendo.com/eu/media/images/08_content_images/games_6/nintendo_switch_7/nswitch_newsupermariobroudeluxe/ci_nswitch_nsmbud_0_princessneedshelp_02.jpg'),
    (2, 4, 'https://www.outerspace.com.br/wp-content/uploads/2018/08/newsupermariobrosu.jpg'),
    (2, 5, 'https://m.media-amazon.com/images/M/MV5BYzZmZjdlMmQtODY2Ny00MTJjLWJjM2EtZGQ4ZWI4NDNhOTVlXkEyXkFqcGdeQXRyYW5zY29kZS13b3JrZmxvdw@@._V1_.jpg'),
    (3, 6, 'https://veja.abril.com.br/wp-content/uploads/2023/05/The-Legend-of-Zelda-Tears-of-the-Kingdom-01.jpg.jpg?crop=1&resize=1212,909'),
    (3, 7, 'https://www.denofgeek.com/wp-content/uploads/2022/05/Leged-of-Zelda-Link.jpg'),
    (4, 8, 'https://cdn.arstechnica.net/wp-content/uploads/2017/03/night-1.jpg'),
    (4, 9, 'https://assetsio.gnwcdn.com/nig20.jpg?width=1600&height=900&fit=crop&quality=100&format=png&enable=upscale&auto=webp'),
    (4, 10, 'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/481510/ss_be58beee5186f4b06b828a90a126f47cca55ae0a.1920x1080.jpg?t=1706292417'),
    (5, 11, 'https://cdn.vox-cdn.com/thumbor/wFPt60G0dPKRXkG4qhQpAg0sW8E=/0x0:1474x829/1400x1050/filters:focal(737x415:738x416)/cdn.vox-cdn.com/uploads/chorus_asset/file/13450357/Tetris.Effect.10.29.Journey.Mode.Metamorphosis.png');

SELECT * FROM imagemgameplay; 
SHOW COLUMNS FROM imagemgameplay;

-- 	Inserindo registros na tabela "plataforma"
INSERT INTO plataforma (idPlataforma, nome_plataforma)
VALUES (1, 'Nintendo Switch'),
       (2, 'PlayStation 5'),
       (3, 'PlayStation 4'),
       (4, 'Xbox'),
       (5, 'Wii U'),
       (6, 'Windows'),
       (7, 'Mac'),
       (8, 'Linux');
       
SELECT * FROM plataforma;

-- Inserindo valores na tabela associativa "jogoplataforma"
INSERT INTO jogoplataforma (idJogo, idPlataforma)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (2, 1),
       (2, 5),
       (3, 1),
       (3, 5),
       (4, 1),
       (4, 6),
       (4, 7),
       (4, 8),
       (4, 4),
       (5, 1),
       (5, 2),
       (5, 3);
SELECT * FROM jogoplataforma;

-- Inserindo valores na tabela "publicador"
INSERT INTO publicador (idPublicador, nome_publicador)
VALUES 
    (1, 'Tunic'),
    (2, 'Nintendo'),
    (3, 'Finji'),
    (4, 'Enhance Games');

SELECT * FROM publicador;

-- Inserindo valores na tabela associativa "jogopublicador"
INSERT INTO jogopublicador (idJogo, idPublicador)
VALUES 
    (1, 1),
    (2, 2),
    (3, 2),
    (4, 3),
    (5, 4);

SELECT * FROM jogopublicador;

-- Inserindo registros na tabela "genero"
INSERT INTO genero (idGenero, nome_genero)
VALUES 
    (1, 'Jogo eletrônico independente'),
    (2, 'Jogo eletrônico de ação e aventura'),
    (3, 'RPG eletrônico'),
    (4, 'Jogo eletrônico de luta'),
    (5, 'Jogo eletrônico de plataforma'),
    (6, 'Jogo eletrônico de quebra cabeça'),
    (7, 'Realidade Virtual');

SELECT * FROM genero;

-- Inserindo registros na tabela associativa "jogogenero"

INSERT INTO jogogenero (idJogo, idGenero)
VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (2, 5),
    (3, 2),
    (4, 2),
    (5, 2),
    (5, 6),
    (5, 7);

SELECT * FROM jogogenero;

-- Inserindo dados na tabela "franquia"
INSERT INTO franquia (idFranquia, nome_franquia)
VALUES 
    (1, 'Tunic'),
    (2,  'Super Mario'),
    (3, 'The Legend of Zelda'),
    (4, 'Night in the Woods'),
    (5, 'Tetris');
    
SELECT * FROM franquia;

-- Inserindo dados na tabela associativa "jogofranquia"
INSERT INTO jogofranquia (idJogo, idFranquia)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

SELECT * FROM jogofranquia;

-- Inserindo dados na tabela "desenvolvedor"
INSERT INTO desenvolvedor (idDesenvolvedor, nome_desenvolvedor)
VALUES 
    (1, "Andrew Shouldice"),
    (2, "Isometricorp Games Limited"),
    (3, "TUNIC Team"),
    (4, "22nd Century Toys LLC"),
    (5, "Nintendo Entertainment Analysis & Development"),
    (6, "Nintendo Entertainment Planning & Development"),
    (7, "Infinite Fall"),
    (8, "Secret Lab"),
    (9, "Monstars"),
    (10, "Resonair");

SELECT * FROM desenvolvedor;

-- Inserindo dados na tabela associativa "jogodesenvolvedor"
INSERT INTO jogodesenvolvedor (idDesenvolvedor, idJogo)
VALUES 
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 2),
    (6, 3),
    (7, 4),
    (8, 4),
    (9, 5),
    (10, 5);
    
SELECT * FROM jogodesenvolvedor;
