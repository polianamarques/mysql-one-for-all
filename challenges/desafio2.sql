SELECT 
(SELECT COUNT(*) FROM musics) AS cancoes,
(SELECT COUNT(*) FROM artist) AS artistas,
(SELECT COUNT(*) FROM album) AS albuns;