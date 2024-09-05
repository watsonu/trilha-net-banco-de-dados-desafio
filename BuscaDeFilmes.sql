--Quest�o 1

SELECT 
	Ano, 
	Nome 
FROM Filmes

--Quest�o 2

SELECT 
	Ano,
	Nome
FROM Filmes 
ORDER BY Ano 

--Quest�o 3

SELECT 
	Ano, 
	Nome,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--Quest�o 4

SELECT * FROM Filmes
WHERE Ano = 1997

--Quest�o 5

SELECT * FROM Filmes
WHERE Ano > 2000

--Quest�o 6

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--Quest�o 7

SELECT
	Ano,
	COUNT(1) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Quest�o 8

SELECT
	*
FROM Atores
WHERE Genero = 'M'

--Quest�o 9

SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Quest�o 10

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--Quest�o 11

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio'

--Quest�o 11

SELECT
	f.Nome,
	g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mist�rio'

--Quest�o 12

SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id