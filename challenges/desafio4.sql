SELECT u.user_name AS pessoa_usuaria,
      IF(MAX(YEAR(history.reproductions_date))
      BETWEEN '2021-01-01' AND current_date(), 'Ativa', 'Inativa')
      AS status_pessoa_usuaria
      FROM user AS u
      INNER JOIN history_reproductions AS history
      ON u.user_id = history.user_id
	  GROUP BY u.user_name 
      ORDER BY u.user_name;