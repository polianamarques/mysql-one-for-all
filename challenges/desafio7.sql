 SELECT art.artist_name AS artista, 
      alb.name_album AS album, 
      COUNT(followers.user_id) AS pessoas_seguidoras
      FROM artist AS art
      INNER JOIN album AS alb
      ON art.id_artist = alb.id_artist
      INNER JOIN following AS followers
      ON art.id_artist = followers.id_artist
      GROUP BY artista, album
      ORDER BY pessoas_seguidoras DESC, artista, album;