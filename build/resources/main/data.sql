--Zawodnicy
INSERT INTO JUMPER (id, name, last_name, birthdate) VALUES (1, 'Adam', 'Malysz', '1977-12-03');
INSERT INTO JUMPER (id, name, last_name, birthdate) VALUES (2, 'Kamil', 'Stoch', '1987-05-25');
INSERT INTO JUMPER (id, name, last_name, birthdate) VALUES (3, 'Piotr', 'Zyla','1987-01-16');
INSERT INTO JUMPER (id, name, last_name, birthdate) VALUES (4, 'Dawid', 'Kubacki', '1990-03-12');
INSERT INTO JUMPER (id, name, last_name, birthdate) VALUES (5, 'Karl', 'Geiger', '1993-02-11');
--Rodzaj skoczni
INSERT INTO TYPE (id, height, type) VALUES (1, '20-49 m', 'Skocznia mala');
INSERT INTO TYPE (id, height, type) VALUES (2, '50-84 m', 'Skocznia srednia');
INSERT INTO TYPE (id, height, type) VALUES (3, '85-109 m', 'Skocznia normalna');
INSERT INTO TYPE (id, height, type) VALUES (4, '110-184 m', 'Skocznia duza');
INSERT INTO TYPE (id, height, type) VALUES (5, '185- m', 'Skocznia mamucia');
--Lokalizacja z rodzajem skoczni
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (1, 'Wielka Krokiew', 'Poland', 4);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (2, 'Srednia Krokiew', 'Poland', 3);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (3, 'Mala Krokiew', 'Poland', 2);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (4, 'Kulm', 'Austria', 5);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (5, 'Bergisel', 'Austria', 4);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (6, 'Bettelwurfschanze', 'Austria', 1);
INSERT INTO COMPETITION (id, ski_jump, country, type_id) VALUES (7, 'Wilingen', 'Germany', 4);
--Tabela zapasowa dla połaczenia
INSERT INTO JUMPER_COMPETITION (id, name, last_name, birthdate) VALUES (1, 'Adam', 'Malysz', '1977-12-03');
INSERT INTO JUMPER_COMPETITION (id, name, last_name, birthdate) VALUES (2, 'Kamil', 'Stoch', '1987-05-25');
INSERT INTO JUMPER_COMPETITION (id, name, last_name, birthdate) VALUES (3, 'Piotr', 'Zyla','1987-01-16');
INSERT INTO JUMPER_COMPETITION (id, name, last_name, birthdate) VALUES (4, 'Dawid', 'Kubacki', '1990-03-12');
INSERT INTO JUMPER_COMPETITION (id, name, last_name, birthdate) VALUES (5, 'Karl', 'Geiger', '1993-02-11');
--Tabela udziału (podsumowanie)
INSERT INTO PART (id, jumper_id, competition_id) VALUES (1, 1, 1);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (2, 1, 2);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (3, 1, 3);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (4, 1, 4);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (5, 1, 5);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (6, 1, 7);

INSERT INTO PART (id, jumper_id, competition_id) VALUES (7, 2, 1);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (8, 2, 2);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (9, 2, 3);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (10, 2, 4);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (11, 2, 5);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (12, 2, 6);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (13, 2, 7);

INSERT INTO PART (id, jumper_id, competition_id) VALUES (14, 3, 1);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (15, 3, 3);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (16, 3, 5);

INSERT INTO PART (id, jumper_id, competition_id) VALUES (17, 4, 1);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (18, 4, 2);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (19, 4, 5);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (20, 4, 7);

INSERT INTO PART (id, jumper_id, competition_id) VALUES (21, 5, 2);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (22, 5, 3);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (23, 5, 5);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (24, 5, 6);
INSERT INTO PART (id, jumper_id, competition_id) VALUES (25, 5, 7);

