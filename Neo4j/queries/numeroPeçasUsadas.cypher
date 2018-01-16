//Numero de peças usadas
MATCH(p:Peça {Estado:"usado"})
RETURN p.Nome, count(*) AS cnt
ORDER BY cnt DESC;
