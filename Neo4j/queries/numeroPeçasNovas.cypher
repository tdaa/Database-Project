//Numero de peças novas
MATCH(p:Peça {Estado:"novo"})
RETURN p.Nome, count(*) AS cnt
ORDER BY cnt DESC;
