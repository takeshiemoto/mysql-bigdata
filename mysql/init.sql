CREATE TABLE IF NOT EXISTS genders
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE
);

INSERT INTO genders (name)
VALUES ('male'),
       ('female'),
       ('other');

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

CREATE TABLE IF NOT EXISTS prefectures
(
    pref_code  INT PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    population INT          NOT NULL
);

INSERT INTO prefectures (pref_code, name, population)
VALUES (1, '北海道', 5250000),
       (2, '青森県', 1246000),
       (3, '岩手県', 1227000),
       (4, '宮城県', 2306000),
       (5, '秋田県', 966000),
       (6, '山形県', 1078000),
       (7, '福島県', 1848000),
       (8, '茨城県', 2860000),
       (9, '栃木県', 1934000),
       (10, '群馬県', 1942000),
       (11, '埼玉県', 7350000),
       (12, '千葉県', 6259000),
       (13, '東京都', 13942000),
       (14, '神奈川県', 9198000),
       (15, '新潟県', 2223000),
       (16, '富山県', 1044000),
       (17, '石川県', 1138000),
       (18, '福井県', 768000),
       (19, '山梨県', 811000),
       (20, '長野県', 2049000),
       (21, '岐阜県', 1987000),
       (22, '静岡県', 3644000),
       (23, '愛知県', 7552000),
       (24, '三重県', 1781000),
       (25, '滋賀県', 1414000),
       (26, '京都府', 2583000),
       (27, '大阪府', 8809000),
       (28, '兵庫県', 5466000),
       (29, '奈良県', 1330000),
       (30, '和歌山県', 925000),
       (31, '鳥取県', 556000),
       (32, '島根県', 671000),
       (33, '岡山県', 1890000),
       (34, '広島県', 2804000),
       (35, '山口県', 1358000),
       (36, '徳島県', 728000),
       (37, '香川県', 956000),
       (38, '愛媛県', 1335000),
       (39, '高知県', 698000),
       (40, '福岡県', 5104000),
       (41, '佐賀県', 815000),
       (42, '長崎県', 1327000),
       (43, '熊本県', 1748000),
       (44, '大分県', 1135000),
       (45, '宮崎県', 1073000),
       (46, '鹿児島県', 1599000),
       (47, '沖縄県', 1453000);