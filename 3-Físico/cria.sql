CREATE TABLE IF NOT EXISTS Veiculo (
    Placa varchar(9) PRIMARY KEY,
    Chassi varchar(17) NOT NULL,
    Cor varchar(20) NOT NULL,
    AnoFabricacao int NOT NULL,
    ModeloID int NOT NULL,
    CategoriaID int NOT NULL,
    ProprietarioCPF varchar(11) NOT NULL,

    FOREIGN KEY (ModeloID) REFERENCES Modelo(ID),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(ID)
    FOREIGN KEY (ProprietarioCPF) REFERENCES Proprietario(CPF)
)

CREATE TABLE IF NOT EXISTS Modelo (
    ID int(6) PRIMARY KEY,
    Nome varchar(64) NOT NULL,
)

CREATE TABLE IF NOT EXISTS Categoria (
    ID int(2) PRIMARY KEY,
    Nome varchar(64) NOT NULL,
)

CREATE TABLE IF NOT EXISTS Proprietario (
    CPF varchar(11) PRIMARY KEY,
    Nome varchar(64) NOT NULL,
    Endereco varchar(100) NOT NULL,
    Bairro varchar(64) NOT NULL,
    Cidade varchar(64) NOT NULL,
    Estado varchar(2) NOT NULL,
    Telefones varchar(66) NOT NULL,
    Sexo varchar(1) NOT NULL,
    DataNascimento date NOT NULL,
    Idade int NOT NULL,
)

CREATE TABLE IF NOT EXISTS Infracao (
    VeiculoPlaca varchar(9) NOT NULL,
    DataHora datetime NOT NULL,
    TipoInfracaoID int NOT NULL,
    PRIMARY KEY (VeiculoPlaca, DataHora),

    FOREIGN KEY (VeiculoPlaca) REFERENCES Veiculo(Placa),
    FOREIGN KEY (TipoInfracaoID) REFERENCES TipoInfracao(ID),
)

CREATE TABLE IF NOT EXISTS TipoInfracao (
    ID int PRIMARY KEY,
    Nome varchar(64) NOT NULL,
    Valor int NOT NULL,
    Velocidade int NOT NULL,
    AgenteTransitoID int NOT NULL,
    LatitudeLocal varchar(64) NOT NULL,
    LongitudeLocal varchar(64) NOT NULL,

    FOREIGN KEY (AgenteTransitoID) REFERENCES AgenteTransito(ID)
    FOREIGN KEY (LatitudeLocal) REFERENCES Local(Latitude)
    FOREIGN KEY (LongitudeLocal) REFERENCES Local(Longitude)
)

CREATE TABLE IF NOT EXISTS Local (
    Latitude varchar(64) PRIMARY KEY,
    Longitude varchar(64) PRIMARY KEY,
    VelocidadeMaxima int NOT NULL,
)

CREATE TABLE IF NOT EXISTS AgenteTransito (
    Matricula int PRIMARY KEY,
    Nome varchar(64) NOT NULL,
    DataContratacao date NOT NULL,
    TempoServico int NOT NULL,
)
