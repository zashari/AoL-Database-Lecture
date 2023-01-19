CREATE DATABASE Sunibioskop;

USE Sunibioskop;

CREATE TABLE Pembeli
(
	IDuser INT NOT NULL,
    NamaUser VARCHAR(100) NOT NULL,
    UmurUser INT NOT NULL,
    PRIMARY KEY(IDuser)
);

CREATE TABLE Film
(
	IDfilm INT NOT NULL,
    JudulFilm VARCHAR(100) NOT NULL,
    KategoriFilm VARCHAR(50) NOT NULL,
    TanggalTayang DATE NOT NULL,
    DurasiFilm INT NOT NULL, -- ini dalam satuan menit
    RatingFilm VARCHAR(10), -- contoh rating: 9/10
    Sutradara VARCHAR(100) NOT NULL,
    PRIMARY KEY(IDfilm)
);

CREATE TABLE Transaksi
(
	IDtransaksi INT NOT NULL,
    IDuser INT NOT NULL,
    IDfilm INT NOT NULL,
    Tanggal DATE NOT NULL,
    JumlahTiket INT NOT NULL,
    PRIMARY KEY(IDtransaksi),
    CONSTRAINT FK_IDuser FOREIGN KEY (IDuser) REFERENCES Pembeli (IDuser),
	CONSTRAINT FK_IDfilm FOREIGN KEY (IDfilm) REFERENCES Film (IDfilm)
);


