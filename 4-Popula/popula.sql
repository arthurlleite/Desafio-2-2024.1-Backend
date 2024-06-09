INSERT INTO Modelo (ID, Nome) VALUES (1, 'Fusca 1998');
INSERT INTO Modelo (ID, Nome) VALUES (2, 'Gol 2000');
INSERT INTO Modelo (ID, Nome) VALUES (3, 'Uno 2005');
INSERT INTO Modelo (ID, Nome) VALUES (4, 'Civic 2010');
INSERT INTO Modelo (ID, Nome) VALUES (5, 'Corolla 2015');

INSERT INTO Categoria (ID, Nome) VALUES (1, 'AUTOMÓVEL');
INSERT INTO Categoria (ID, Nome) VALUES (2, 'MOTOCICLETA');
INSERT INTO Categoria (ID, Nome) VALUES (3, 'CAMINHÃO');
INSERT INTO Categoria (ID, Nome) VALUES (4, 'ÔNIBUS');
INSERT INTO Categoria (ID, Nome) VALUES (5, 'TRATOR');

INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Telefones, Sexo, DataNascimento, Idade) VALUES ('12345678901', 'João da Silva', 'Rua A, 123', 'Centro', 'Cidade A', 'SP', '11 1234-5678', 'M', '1980-01-01', 40);
INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Telefones, Sexo, DataNascimento, Idade) VALUES ('23456789012', 'Maria da Almeida Silva', 'Rua B, 456', 'Centro', 'Cidade B', 'SP', '11 2345-6789', 'F', '1985-02-02', 35);
INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Telefones, Sexo, DataNascimento, Idade) VALUES ('34567890123', 'José da Silva', 'Rua C, 789', 'Centro', 'Cidade C', 'SP', '11 3456-7890', 'M', '1990-03-03', 30);
INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Telefones, Sexo, DataNascimento, Idade) VALUES ('45678901234', 'Ana da Silva', 'Rua D, 012', 'Centro', 'Cidade D', 'SP', '11 4567-8901', 'F', '1995-04-04', 25);
INSERT INTO Proprietario (CPF, Nome, Endereco, Bairro, Cidade, Estado, Telefones, Sexo, DataNascimento, Idade) VALUES ('56789012345', 'Paulo da Silva', 'Rua E, 345', 'Centro', 'Cidade E', 'SP', '11 5678-9012', 'M', '2000-05-05', 20);

INSERT INTO Veiculo (Placa, Cor, AnoFabricacao, ModeloID, CategoriaID, ProprietarioCPF) VALUES ('ABC1234', 'Branco', 1998, 1, 1, '12345678901');
INSERT INTO Veiculo (Placa, Cor, AnoFabricacao, ModeloID, CategoriaID, ProprietarioCPF) VALUES ('DEF2345', 'Preto', 2000, 2, 1, '23456789012');
INSERT INTO Veiculo (Placa, Cor, AnoFabricacao, ModeloID, CategoriaID, ProprietarioCPF) VALUES ('GHI3456', 'Vermelho', 2005, 3, 1, '34567890123');
INSERT INTO Veiculo (Placa, Cor, AnoFabricacao, ModeloID, CategoriaID, ProprietarioCPF) VALUES ('JKL4567', 'Azul', 2010, 4, 1, '45678901234');
INSERT INTO Veiculo (Placa, Cor, AnoFabricacao, ModeloID, CategoriaID, ProprietarioCPF) VALUES ('MNO5678', 'Verde', 2015, 5, 1, '56789012345');

INSERT INTO Local (Latitude, Longitude, VelocidadeMaxima) VALUES ('-23.5505199', '-46.63330939999997', 50);
INSERT INTO Local (Latitude, Longitude, VelocidadeMaxima) VALUES ('-23.5505199', '-46.63330939999997', 60);
INSERT INTO Local (Latitude, Longitude, VelocidadeMaxima) VALUES ('-23.5505199', '-46.63330939999997', 70);
INSERT INTO Local (Latitude, Longitude, VelocidadeMaxima) VALUES ('-23.5505199', '-46.63330939999997', 80);
INSERT INTO Local (Latitude, Longitude, VelocidadeMaxima) VALUES ('-23.5505199', '-46.63330939999997', 90);

INSERT INTO AgenteTransito (Matricula, Nome, DataContratacao, TempoServico) VALUES (1, 'Agente 1', '2010-01-01', 10);
INSERT INTO AgenteTransito (Matricula, Nome, DataContratacao, TempoServico) VALUES (2, 'Agente 2', '2011-02-02', 9);
INSERT INTO AgenteTransito (Matricula, Nome, DataContratacao, TempoServico) VALUES (3, 'Agente 3', '2012-03-03', 8);
INSERT INTO AgenteTransito (Matricula, Nome, DataContratacao, TempoServico) VALUES (4, 'Agente 4', '2013-04-04', 7);
INSERT INTO AgenteTransito (Matricula, Nome, DataContratacao, TempoServico) VALUES (5, 'Agente 5', '2014-05-05', 6);

INSERT INTO TipoInfracao (ID, Nome, Valor, Velocidade, AgenteTransitoID, LatitudeLocal, LongitudeLocal) VALUES (1, 'AVANÇO DE SINAL VERMELHO', 100, 50, 1, '-23.5505199', '-46.63330939999997');
INSERT INTO TipoInfracao (ID, Nome, Valor, Velocidade, AgenteTransitoID, LatitudeLocal, LongitudeLocal) VALUES (2, 'EXCESSO DE VELOCIDADE', 200, 60, 2, '-23.5505199', '-46.63330939999997');
INSERT INTO TipoInfracao (ID, Nome, Valor, Velocidade, AgenteTransitoID, LatitudeLocal, LongitudeLocal) VALUES (3, 'DIRIGIR SEM CINTO DE SEGURANÇA', 300, 70, 3, '-23.5505199', '-46.63330939999997');
INSERT INTO TipoInfracao (ID, Nome, Valor, Velocidade, AgenteTransitoID, LatitudeLocal, LongitudeLocal) VALUES (4, 'DIRIGIR USANDO CELULAR', 400, 80, 4, '-23.5505199', '-46.63330939999997');
INSERT INTO TipoInfracao (ID, Nome, Valor, Velocidade, AgenteTransitoID, LatitudeLocal, LongitudeLocal) VALUES (5, 'DIRIGIR EMBRIAGADO', 500, 90, 5, '-23.5505199', '-46.63330939999997');

INSERT INTO Infracao (VeiculoPlaca, DataHora, TipoInfracaoID) VALUES ('ABC1234', '2020-01-01 10:00:00', 1);
INSERT INTO Infracao (VeiculoPlaca, DataHora, TipoInfracaoID) VALUES ('DEF2345', '2020-02-02 11:00:00', 2);
INSERT INTO Infracao (VeiculoPlaca, DataHora, TipoInfracaoID) VALUES ('GHI3456', '2020-03-03 12:00:00', 3);
INSERT INTO Infracao (VeiculoPlaca, DataHora, TipoInfracaoID) VALUES ('JKL4567', '2020-04-04 13:00:00', 4);
INSERT INTO Infracao (VeiculoPlaca, DataHora, TipoInfracaoID) VALUES ('MNO5678', '2020-05-05 14:00:00', 5);
