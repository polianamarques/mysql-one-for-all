     SELECT COUNT(history.user_id) musicas_no_historico
       FROM history_reproductions AS history
       INNER JOIN user AS u
       ON history.user_id = u.user_id
       WHERE u.user_name = 'Barbara Liskov';