use music;
SET @artist = 'Third Day';
SET @album = 'Third Day';
SET @release = '1996-01-01';

INSERT IGNORE INTO artist (name) VALUES (@artist);

SET @artist_id = coalesce( (select id from artist where name in (@artist)),(LAST_INSERT_ID()) );

INSERT IGNORE INTO song (name,seconds,writer_fname,writer_lname) VALUES
('Nothing At All',313,'Mac','Powell');

SET @tracknum = (1);
-- ('Forever',228,'Mac','Powell');
-- SET @tracknum = (2);
-- ('Mama',232,'Mac','Powell');
-- SET @tracknum = (3);
-- ('Love Song',233,'Mac','Powell');
-- SET @tracknum = (4);
-- ('Blackbird',243,'Mac','Powell');
-- SET @tracknum = (5);
-- ('Thief',264,'Mac','Powell');
-- SET @tracknum = (6);
-- ('Consuming Fire',249,'Mac','Powell');
-- SET @tracknum = (7);
-- ('Did You Mean It',251,'Mac','Powell');
-- SET @tracknum = (8);
-- ('Holy Spirit',142,'Mac','Powell');
-- SET @tracknum = (9);
-- ('Livin for Jesus',138,'Mac','Powell');
-- SET @tracknum = (10);
-- ('Take My Life',136,'Mac','Powell');
-- SET @tracknum = (11);
-- ('Praise Song',182,'Mac','Powell');
-- SET @tracknum = (12);

SET @song_id = LAST_INSERT_ID();

INSERT INTO artist_song (artist_id,song_id) values (@artist_id,@song_id);

SET @artist_song_id = LAST_INSERT_ID();

INSERT INTO artistsong_instrument (artist_song_id,instrument_id) select @artist_song_id,id from instrument where name in ('guitar','drums','bass', 'electric guitar','mandolin') and id is not null;

INSERT IGNORE INTO album (name, release_date) values (@album, @release);
SET @album_id = coalesce( (select id from album where name in (@album)),(LAST_INSERT_ID()) );

INSERT INTO album_artist (album_id, artist_id) values (@album_id,@artist_id);

INSERT INTO track (position, song_id, album_id) values (@tracknum,@song_id,@album_id);
