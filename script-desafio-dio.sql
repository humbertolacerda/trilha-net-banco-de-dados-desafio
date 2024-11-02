
--1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM DBO.FILMES

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME, ANO FROM DBO.FILMES ORDER BY ANO 

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT NOME, ANO, DURACAO FROM DBO.FILMES WHERE NOME = 'DE VOLTA PARA O FUTURO'

--4 - Buscar os filmes lançados em 1997
SELECT * FROM DBO.FILMES WHERE ANO = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM DBO.FILMES WHERE ANO > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM DBO.FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY DURACAO

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) as QUANTIDADE FROM DBO.FILMES GROUP BY ANO ORDER BY 2 DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PRIMEIRONOME, ULTIMONOME, GENERO FROM DBO.ATORES WHERE GENERO = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PRIMEIRONOME, ULTIMONOME FROM DBO.ATORES WHERE GENERO = 'F' ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o gênero
SELECT F.NOME, G.GENERO FROM DBO.FILMES F
INNER JOIN DBO.FILMESGENERO FG ON FG.IdFilme = F.Id
INNER JOIN DBO.GENEROS G ON G.Id = FG.IdGenero

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.NOME, G.GENERO FROM DBO.FILMES F
INNER JOIN DBO.FILMESGENERO FG ON FG.IdFilme = F.Id
INNER JOIN DBO.GENEROS G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel FROM DBO.ELENCOFILME E
INNER JOIN DBO.ATORES A ON A.Id = E.IdAtor
INNER JOIN DBO.FILMES F ON F.Id = E.IdFilme




