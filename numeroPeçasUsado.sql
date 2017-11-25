Use Oficina;

SELECT DISTINCT Peças.Nome, COUNT(*) AS `Numero de peças novas utilizadas` FROM Peças
	WHERE Estado = 'usado'
	GROUP BY Peças.Nome