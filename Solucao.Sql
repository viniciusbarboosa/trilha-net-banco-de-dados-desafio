--1 Buscar o nome e ano dos filmes
Select 
	nome,
	ano
FROM Filmes

--2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select 
	nome,
	ano
FROM Filmes
ORDER BY ano ASC

--3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select 
	nome,
	ano,
	duracao
FROM Filmes
WHERE nome LIKE '%de volta para o futuro%'

-- 4 Buscar os filmes lançados em 1997
Select 
	nome,
	ano,
	duracao
FROM Filmes
WHERE ano = 1997

-- 5  Buscar os filmes lançados APÓS o ano 2000 
Select 
	nome,
	ano,
	duracao
FROM Filmes
WHERE ano > 2000

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
Select 
	nome,
	ano,
	duracao
FROM Filmes
WHERE duracao > 100 AND duracao < 150

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano
Select 
	ano,
	COUNT(*) quantidade_filmes
FROM Filmes
GROUP BY ano

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC 


-- 10 Buscar o nome do filme e o gênero
SELECT 
	Filmes.Nome,
	Generos.Genero 
FROM FilmesGenero
LEFT JOIN Filmes ON(Filmes.Id = FilmesGenero.IdFilme)
LEFT JOIN Generos ON(Generos.Id = FilmesGenero.IdGenero)

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	Filmes.Nome,
	Generos.Genero 
FROM FilmesGenero
LEFT JOIN Filmes ON(Filmes.Id = FilmesGenero.IdFilme)
LEFT JOIN Generos ON(Generos.Id = FilmesGenero.IdGenero)
WHERE Generos.Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme
LEFT JOIN Filmes ON(Filmes.Id = ElencoFilme.IdFilme)
LEFT JOIN Atores ON(Atores.Id = ElencoFilme.IdAtor)


