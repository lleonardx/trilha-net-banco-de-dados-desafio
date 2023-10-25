-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
select Nome, Ano, duracao from Filmes order by Ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select nome, ano, duracao from Filmes where nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select nome, ano, duracao from Filmes where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select nome, ano, duracao from Filmes where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select nome, duracao from Filmes where duracao > 100 and duracao < 150 order by duracao asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, count(*) as QuantidadeDeFilmes from Filmes group by ano order by QuantidadeDeFilmes desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome asc

-- 10 - Buscar o nome do filme e o gênero
select Nome, g.Genero from filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme
	inner join Generos g on fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select Nome, g.Genero from Filmes f
inner join FilmesGenero fg on f.Id = fg.IdFilme 
	inner join Generos g on fg.IdGenero = g.Id
where Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
inner join ElencoFilme ef on f.Id = ef.IdFilme
	inner join Atores a on ef.IdAtor = a.Id

