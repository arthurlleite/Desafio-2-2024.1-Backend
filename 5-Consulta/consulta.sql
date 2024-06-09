-- Todos os dados dos veículos de João da Silva
SELECT Placa, Cor, AnoFabricacao, ModeloID, CategoriaID
FROM Veiculo, Proprietario
WHERE ProprietarioCPF = '12345678901';

-- Consultar proprietário pela parte do nome
SELECT *
FROM Proprietario
WHERE Nome LIKE '%Silva%';

-- Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...
SELECT *
FROM Infracao
WHERE DataHora BETWEEN '2020-01-01 00:00:00' AND '2020-12-31 23:59:59';

-- Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente
SELECT ModeloID, COUNT(*)
FROM Veiculo
GROUP BY ModeloID
ORDER BY COUNT(*) DESC;
