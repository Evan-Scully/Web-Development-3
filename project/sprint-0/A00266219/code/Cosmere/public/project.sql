DROP DATABASE IF EXISTS books;
CREATE DATABASE IF NOT EXISTS books;
USE books;

DROP TABLE IF EXISTS book;
CREATE TABLE book (
	book_id INTEGER AUTO_INCREMENT ,
	name VARCHAR(30) NOT NULL,
    author VARCHAR(30) NOT NULL,
    blurb VARCHAR(400) NOT NULL,
    pages VARCHAR(30) NOT NULL,
    word_count VARCHAR(30) NOT NULL,
    series VARCHAR(30) NOT NULL,
    pov_character VARCHAR(30) NOT NULL,
    image VARCHAR(30) NOT NULL,
	PRIMARY KEY(book_id));
    
DROP TABLE IF EXISTS user;
CREATE TABLE user (
	username VARCHAR(30) NOT NULL,
    name VARCHAR(30) NOT NULL,
    password VARCHAR(20) NOT NULL,
    image VARCHAR(30) NOT NULL,
	PRIMARY KEY(username));
    
INSERT INTO book VALUES ( null, 'The Way of Kings', 'Brandon Sanderson', 'Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike.', '1280', '398,460', 'Stormlight Archive', 'Kaladin','WayOfKings.jpg');
INSERT INTO book VALUES ( null, 'Words Of Radiance', 'Brandon Sanderson', 'Brilliant but troubled Shallan strives along a parallel path. Despite being broken in ways she refuses to acknowledge, she bears a terrible burden: to somehow prevent the return of the legendary Voidbringers and the civilization-ending Desolation that will follow.', '1328', '419,485', 'Stormlight Archive', 'Shallan','WordsOfRadiance.jpg');
INSERT INTO book VALUES ( null, 'The Great Hunt', 'Robert Jordan', 'The Forsaken are loose, the Horn of Valere has been found, and the Dead are rising from their dreamless sleep. The Prophecies are being fulfilled – but Rand al’Thor, the shepherd the Aes Sedai have proclaimed as the Dragon Reborn, desperately seeks to escape his destiny.', '706', '260,353', 'The Wheel of Time', 'Mat Cauthon','TheGreatHunt.jpg');
INSERT INTO book VALUES ( null,'The Eye of the World', 'Robert Jordan', 'The Wheel of Time turns and Ages come and go, leaving memories that become legend. Legend fades to myth, and even myth is long forgotten when the Age that gave it birth returns again.', '780', '310,910', 'The Wheel of Time', 'Rand AlThor','EyeOfTheWorld.jpg');

INSERT INTO user VALUES ( 'evan_scully', 'evan scully', 'sheogorath99?', 'Avatar.jpg');
INSERT INTO user VALUES ( 'john_doe', 'john doe', 'Password2', 'Avatar2.jpg');
INSERT INTO user VALUES ( 'jane_doe', 'jane doe', 'Password3', 'Avatar3.jpg');

Select * from user;
