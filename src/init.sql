USE mydb;
INSERT INTO users (username, password, email) VALUES ("user", "password", "user@example.com");
INSERT INTO `keys` (name) VALUES ("Cmaj"), ("Gmaj"), ("Dmaj"), ("Amaj"), ("Emaj"), ("Bmaj"), ("F#maj"), ("C#maj");
INSERT INTO `keys` (name) VALUES ("Cm"), ("Gm"), ("Dm"), ("Am"), ("Em"), ("Bm"), ("F#m"), ("C#m");
INSERT INTO chords (name) VALUES ("A"), ("Bb"), ("B"), ("C"), ("C#"), ("D"), ("Eb"), ("E"), ("F"), ("F#"), ("G"), ("Ab");
INSERT INTO chords (name) VALUES ("Am"), ("Bbm"), ("Bm"), ("Cm"), ("C#m"), ("Dm"), ("Ebm"), ("Em"), ("Fm"), ("F#m"), ("Gm"), ("Abm");
INSERT INTO keychords (kid, cid) VALUES (2, 10), (2, 12), (2, 14), (2, 15), (2, 17), (2, 7), (2, 9);
INSERT INTO keychords (kid, cid) VALUES (3, 17), (3, 7), (3, 9), (3, 10), (3, 12), (3, 14), (3, 16);
INSERT INTO keychords (kid, cid) VALUES (4, 12), (4, 14), (4, 16), (4, 17), (4, 7), (4, 9), (4, 11);
INSERT INTO keychords (kid, cid) VALUES (5, 7), (5, 9), (5, 11), (5, 12), (5, 14), (5, 16), (5, 18);
INSERT INTO keychords (kid, cid) VALUES (6, 14), (6, 16), (6, 18), (6, 7), (6, 9), (6, 11), (6, 13);
INSERT INTO keychords (kid, cid) VALUES (7, 9), (7, 11), (7, 13), (7, 14), (7, 16), (7, 18), (7, 8);
INSERT INTO keychords (kid, cid) VALUES (8, 16), (8, 18), (8, 8), (8, 9), (8, 11), (8, 13), (8, 15);
INSERT INTO keychords (kid, cid) VALUES (9, 11), (9, 13), (9, 15), (9, 16), (9, 18), (9, 8), (9, 10);
INSERT INTO progressions (c1, c2, c3, c4, uid) VALUES (1, 2, 3, 4, 1);
INSERT INTO posts (content, uid, progid) VALUES ("TEST POST PLEASE IGNORE", 1, 2);