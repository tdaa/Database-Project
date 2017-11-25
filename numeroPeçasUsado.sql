Use Oficina;

SELECT DISTINCT Peça.Nome, COUNT(*) AS `Numero de peças novas utilizadas` FROM Peça
	WHERE Estado = 'usado'
	GROUP BY Peça.Nome
    ORDER BY `Numero de peças novas utilizadas` DESC;