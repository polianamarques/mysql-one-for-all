 SELECT m.songs AS cancao,COUNT(history.music_id) AS reproducoes
      FROM musics AS m 
      INNER JOIN history_reproductions AS history
      ON m.music_id = history.music_id
	  GROUP BY history.music_id
      ORDER BY reproducoes DESC, cancao
      LIMIT 2;