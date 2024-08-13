CREATE TABLE IF NOT EXISTS genders
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE
);

INSERT INTO genders (name)
VALUES ('male'), ('female'), ('other');

CREATE TABLE IF NOT EXISTS users
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    email      VARCHAR(255),
    birthday   DATE,
    gender_id  INT,
    FOREIGN KEY (gender_id) REFERENCES genders (id)
);