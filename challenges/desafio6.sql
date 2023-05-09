SELECT ROUND(MIN(p.plan_value), 2) AS faturamento_minimo,
      ROUND(MAX(p.plan_value), 2) AS faturamento_maximo, 
      ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
      ROUND(SUM(p.plan_value), 2) AS faturamento_total
      FROM plan AS p, user AS u
      WHERE p.id_plan = u.id_plan;