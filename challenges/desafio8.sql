SELECT art.artist_name AS artista , 
      alb.name_album AS album 
      FROM artist AS art
	   INNER JOIN album AS alb
       ON art.id_artist = alb.id_artist
       WHERE art.artist_name = 'Elis Regina' 
       ORDER BY album;