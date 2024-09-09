CREATE TABLE if not exists writer (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);

CREATE TABLE if not exists magazine (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    publicationDate VARCHAR(255)
);

CREATE TABLE if not exists writer_magazine(
    writerId INTEGER,
    magazineId INTEGER,
    PRIMARY KEY (writerId, magazineId),
    FOREIGN KEY (writerId) REFERENCES writer(id),
    FOREIGN KEY (magazineId) REFERENCES magazine(id)
);