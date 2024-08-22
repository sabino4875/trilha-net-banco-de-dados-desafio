/*
    01  - Buscar o nome e ano dos filmes
*/
SELECT Nome, Ano
FROM Filmes

/*
    02 - Buscar o nome e o ano dos filmes, ordenados por ordem crescente pelo ano
*/
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano

/*
    03 -   Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE 'De volta para o futuro'

/*
    04 - Buscar os filmes lançados em 1997
*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997

/*
    05 - Buscar os filmes lançados APÓS o ano 2000
*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000

/*
    06 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
*/
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

/*
  07 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
  Seguindo o que foi apresentado na imagem, a consulta foi ordenada pelo campo Quantidade
*/
SELECT DISTINCT Ano, COUNT(Ano) AS Quantidade
FROM Filmes T1
GROUP BY Ano
ORDER BY Quantidade DESC

/*
    08 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
*/
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

/*
    09 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
*/
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

/*
    10 - Buscar o nome do filme e o gênero
*/
SELECT T2.Nome, T3.Genero
FROM FilmesGenero T1
INNER JOIN  Filmes T2 ON T2.Id = T1.IdFilme
INNER JOIN Generos T3 ON T3.Id = T1.IdGenero

/*
    11 - Buscar o nome do filme e o gênero do tipo "Mistério"
*/
SELECT T2.Nome, T3.Genero
FROM FilmesGenero T1
INNER JOIN  Filmes T2 ON T2.Id = T1.IdFilme
INNER JOIN Generos T3 ON T3.Id = T1.IdGenero
WHERE T3.Genero LIKE 'Mistério'

/*
    12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
*/
SELECT T3.Nome, T2.PrimeiroNome, T2.UltimoNome, T1.Papel
FROM ElencoFilme T1
INNER JOIN Atores T2 ON T2.Id = T1.IdAtor
INNER JOIN Filmes T3 ON T3.Id = T1.IdFilme
