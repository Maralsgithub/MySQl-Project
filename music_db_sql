use music;

CREATE TABLE album (
    id int(11)NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    release_date DATE DEFAULT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE artist (
    id int(11)NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE album_artist (
    id int(11)NOT NULL AUTO_INCREMENT,
    album_id int(11)NOT NULL,
    artist_id int(11)NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE instrument (
    id int(11)NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE artistsong_instrument (
    id int(11)NOT NULL AUTO_INCREMENT,
    artist_song_id int(11)NOT NULL,
    instrument_id int(11)NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE song (
    id int(11)NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    seconds INT(3),
    writer_fname VARCHAR(45),
    writer_lname VARCHAR(45),
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE artist_song (
    id int(11)NOT NULL AUTO_INCREMENT,
    artist_id int(11) NOT NULL,
    song_id int(11) NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE track (
    id int(11)NOT NULL AUTO_INCREMENT,
    position int(2) NOT NULL,
    song_id int(11) NOT NULL,
    album_id int(11) NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
