DROP DATABASE IF EXISTS books;
CREATE DATABASE IF NOT EXISTS books;
USE books;

DROP TABLE IF EXISTS book;
CREATE TABLE book (
	book_id INTEGER AUTO_INCREMENT ,
	name VARCHAR(30) NOT NULL,
    author VARCHAR(30) NOT NULL,
    pages VARCHAR(30) NOT NULL,
    word_count VARCHAR(30) NOT NULL,
    series VARCHAR(30) NOT NULL,
    pov_character VARCHAR(30) NOT NULL,
    image VARCHAR(30) NOT NULL,
	ISBN VARCHAR(15) NOT NULL,
    blurb VARCHAR(1000) NOT NULL,
	PRIMARY KEY(book_id));
    
DROP TABLE IF EXISTS user;
CREATE TABLE user (
	username VARCHAR(30) NOT NULL,
    name VARCHAR(30) NOT NULL,
    password VARCHAR(20) NOT NULL,
    image VARCHAR(30) NOT NULL,
	PRIMARY KEY(username));
    
INSERT INTO book VALUES ( null, 'The Way of Kings', 'Brandon Sanderson', '1280', '398,460', 'The Stormlight Archive', 'Kaladin','TheWayOfKingsUK.jpg','978-0575097360','Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike.');
INSERT INTO book VALUES ( null, 'Words Of Radiance', 'Brandon Sanderson',  '1328', '419,485', 'The Stormlight Archive', 'Shallan Davar','WordsOfRadianceUK.jpg','978-0575093317','Brilliant but troubled Shallan strives along a parallel path. Despite being broken in ways she refuses to acknowledge, she bears a terrible burden: to somehow prevent the return of the legendary Voidbringers and the civilization-ending Desolation that will follow.');
INSERT INTO book VALUES ( null, 'Oathbringer', 'Brandon Sanderson', '1248', '481,980', 'The Stormlight Archive', 'Dalinar Kholin','Oathbringer.jpg','978-0765365293','Dalinar Kholins Alethi armies won a fleeting victory at a terrible cost: The enemy Parshendi summoned the violent Everstorm, which now sweeps the world with destruction, and in its passing awakens the once peaceful and subservient parshmen to the horror of their millennia-long enslavement by humans.');    
INSERT INTO book VALUES ( null, 'Rhythm of War', 'Brandon Sanderson', '1120', '200,450', 'The Stormlight Archive', 'Venli','RhythmOfWar.jpg' ,'978-0575093386',''); 
INSERT INTO book VALUES ( null, 'Edgedancer', 'Brandon Sanderson', '272', '55,535', 'The Stormlight Archive', 'Lift','EdgedancerUK.jpg' ,'978-1473225039','');    
 
INSERT INTO book VALUES ( null, 'The Eye of the World', 'Robert Jordan','780', '310,910', 'The Wheel of Time', 'Rand AlThor','Ebook-1.png','','The Wheel of Time turns and Ages come and go, leaving memories that become legend. Legend fades to myth, and even myth is long forgotten when the Age that gave it birth returns again.');     
INSERT INTO book VALUES ( null, 'The Great Hunt', 'Robert Jordan', '706', '260,353', 'The Wheel of Time', 'Mat Cauthon','Ebook-2.png','','The Forsaken are loose, the Horn of Valere has been found, and the Dead are rising from their dreamless sleep. The Prophecies are being fulfilled – but Rand al’Thor, the shepherd the Aes Sedai have proclaimed as the Dragon Reborn, desperately seeks to escape his destiny.');
INSERT INTO book VALUES ( null, 'The Shadow Rising', 'Robert Jordan', '1007', '393,823', 'The Wheel of Time', 'Perrin Aybara','Ebook-3.jpg','','The seals of Shayol Ghul are weak now, and the Dark One reaches out. The Shadow is rising to cover humankind.In Tar Valon, Min sees portents of hideous doom. Will the White Tower itself be broken?In the Two Rivers, the Whitecloaks ride in pursuit of a man with golden eyes, and in pursuit of the Dragon Reborn.');
INSERT INTO book VALUES ( null, 'The Dragon Reborn', 'Robert Jordan', '704', '215,760', 'The Wheel of Time', 'Rand AlThor','Ebook-4.jpg','','Able to touch the One Power, but unable to control it, and with no one to teach him how—for no man has done it in three thousand years—Rand alThor knows only that he must face the Dark One. But how?'); 
INSERT INTO book VALUES ( null, 'The Fires of Heaven', 'Robert Jordan', '992', '317,115', 'The Wheel of Time', 'Perrin Aybara','Ebook-5.jpg','','');
INSERT INTO book VALUES ( null, 'Lord of Chaos', 'Robert Jordan', '1011', '361,340', 'The Wheel of Time', 'Egwene AlVere','Ebook-6.jpg','','');
INSERT INTO book VALUES ( null, 'A Crown of Swords', 'Robert Jordan', '896', '264,915', 'The Wheel of Time', 'Egwene AlVere','Ebook-7.jpeg','','');   

INSERT INTO book VALUES ( null, 'The Fellowship of the Ring', 'JRR Tolkein', '480', '187,790', 'The Lord of the Rings', 'Frodo Baggins','LoTR1.jpg','','');
INSERT INTO book VALUES ( null, 'The Two Towers', 'JRR Tolkein', '416', '145,000', 'The Lord of the Rings', 'Samwise Gamgee','LoTR2.jpg','','');
INSERT INTO book VALUES ( null, 'The Return of the King', 'JRR Tolkein', '512', '125,135', 'The Lord of the Rings', 'Aragorn','LoTR3.jpg','','');      

INSERT INTO user VALUES ( 'evan_scully', 'evan scully', 'sheogorath99?', 'Avatar.jpg');
INSERT INTO user VALUES ( 'john_doe', 'john doe', 'Password2', 'Avatar2.jpg');
INSERT INTO user VALUES ( 'jane_doe', 'jane doe', 'Password3', 'Avatar3.jpg');

Select * from book;
