Use Oficina;

SELECT DISTINCT Peças.Nome, COUNT(*) AS `Numero de peças novas utilizadas` FROM Peças
	WHERE Estado = 'novo'
	GROUP BY Peças.Nome