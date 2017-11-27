Use Oficina;

SELECT DISTINCT Peça.Nome, COUNT(*) AS `Numero de peças usadas utilizadas` FROM Peça
	WHERE Estado = 'usado'
	GROUP BY Peça.Nome
    ORDER BY `Numero de peças usadas utilizadas` DESC;