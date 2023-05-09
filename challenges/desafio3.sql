  SELECT u.user_name  AS pessoa_usuaria,
      COUNT(*) AS musicas_ouvidas, 
      ROUND(SUM(seconds)/60, 2) AS total_minutos
      FROM user AS u
      INNER JOIN history_reproductions AS history
      ON u.user_id = history.user_id
      INNER JOIN musics AS music
      ON history.music_id = music.music_id
      GROUP BY u.user_name 
      ORDER BY u.user_name;