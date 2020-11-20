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
 
INSERT INTO book VALUES ( null, 'The Eye of the World', 'Robert Jordan','780', '310,910', 'The Wheel of Time', 'Rand AlThor','Ebook-1.png','978-1250251466','The Wheel of Time turns and Ages come and go, leaving memories that become legend. Legend fades to myth, and even myth is long forgotten when the Age that gave it birth returns again.When The Two Rivers is attacked by Trollocs-a savage tribe of half-men, half-beasts- five villagers flee that night into a world they barely imagined, with new dangers waiting in the shadows and in the light.');     
INSERT INTO book VALUES ( null, 'The Great Hunt', 'Robert Jordan', '706', '260,353', 'The Wheel of Time', 'Mat Cauthon','Ebook-2.png','978-1250251480','The Forsaken are loose, the Horn of Valere has been found, and the Dead are rising from their dreamless sleep. The Prophecies are being fulfilled – but Rand al’Thor, the shepherd the Aes Sedai have proclaimed as the Dragon Reborn, desperately seeks to escape his destiny.');
INSERT INTO book VALUES ( null, 'The Shadow Rising', 'Robert Jordan', '1007', '393,823', 'The Wheel of Time', 'Perrin Aybara','Ebook-3.jpg','978-1250251923','The seals of Shayol Ghul are weak now, and the Dark One reaches out. The Shadow is rising to cover humankind.In Tar Valon, Min sees portents of hideous doom. Will the White Tower itself be broken? In the Two Rivers, the Whitecloaks ride in pursuit of a man with golden eyes, and in pursuit of the Dragon Reborn.');
INSERT INTO book VALUES ( null, 'The Dragon Reborn', 'Robert Jordan', '704', '215,760', 'The Wheel of Time', 'Rand AlThor','Ebook-4.jpg','978-0765334350','Able to touch the One Power, but unable to control it, and with no one to teach him how—for no man has done it in three thousand years—Rand alThor knows only that he must face the Dark One. But how?'); 
INSERT INTO book VALUES ( null, 'The Fires of Heaven', 'Robert Jordan', '992', '317,115', 'The Wheel of Time', 'Perrin Aybara','Ebook-5.jpg','978-0312854270','Devastated by Rand alThors revelation of their true history, the Shaido Aiel attack Cairhien, with the aid of the Forsaken Sammael. Rand prepares to attack the Shaido but first spends time in the Aiel Waste, learning from the former Forsaken Asmodean and becoming closer to the Aiel Maiden Aviendha. In the same area, Egwene alVere continues her studies under the Aiel Wise Ones. Later, Rand leads his Aiel forces to defeat the Shaido, in the Second Battle of Cairhien. Mat Cauthon uses his memories of past generals to act as a commander and win numerous battles, eventually killing the Shaido leader Couladin, whereupon the Shaido Aiel retreat.');
INSERT INTO book VALUES ( null, 'Lord of Chaos', 'Robert Jordan', '1011', '361,340', 'The Wheel of Time', 'Egwene AlVere','Ebook-6.jpg','978-0312854287','In Salidar the White Tower in exile prepares an embassy to Caemlyn, where Rand AlThor, the Dragon Reborn, holds the throne -- and where an unexpected visitor may change the world ...In Emonds Field, Perrin Goldeneyes, Lord of the Two Rivers, feels the pull of taveren to taveren and prepares to march ... Morgase of Caemlyn finds a most unexpected, and quite unwelcome, ally ...');
INSERT INTO book VALUES ( null, 'A Crown of Swords', 'Robert Jordan', '896', '264,915', 'The Wheel of Time', 'Egwene AlVere','Ebook-7.jpeg','978-0812550283','A Crown of Swords has three primary plotlines: Rand alThor, the Dragon Reborn, prepares to attack the Forsaken Sammael in Illian while enjoying life with his friend, Min Farshaw, and attempting to quell the rebellion by nobles in Cairhien, during which Padan Fain severely injures him.');   

INSERT INTO book VALUES ( null, 'The Fellowship of the Ring', 'JRR Tolkein', '480', '187,790', 'The Lord of the Rings', 'Frodo Baggins','LoTR1.jpg','978-0547928210','In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell by chance into the hands of the hobbit Bilbo Baggins.');
INSERT INTO book VALUES ( null, 'The Two Towers', 'JRR Tolkein', '416', '145,000', 'The Lord of the Rings', 'Samwise Gamgee','LoTR2.jpg','978-0547928203','Frodo and the Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They have lost the wizard, Gandalf, in the battle with an evil spirit in the Mines of Moria; and at the Falls of Rauros, Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape the rest of the company were attacked by Orcs');
INSERT INTO book VALUES ( null, 'The Return of the King', 'JRR Tolkein', '512', '125,135', 'The Lord of the Rings', 'Aragorn','LoTR3.jpg','978-0547928197','The armies of the Dark Lord Sauron are massing as his evil shadow spreads ever wider. Men, Dwarves, Elves and Ents unite forces to do battle agains the Dark. Meanwhile, Frodo and Sam struggle further into Mordor in their heroic quest to destroy the One Ring. The devastating conclusion of J.R.R. Tolkien’s classic tale of magic and adventure, begun in The Fellowship of the Ring and The Two Towers, features the definitive edition of the text and includes the Appendices and a revised Index in full');     
   
INSERT INTO book VALUES ( null, 'The Way of Kings', 'Brandon Sanderson', '1280', '398,460', 'The Stormlight Archive', 'Kaladin','TheWayOfKingsUK.jpg','978-0575097360','Roshar is a world of stone and storms. Uncanny tempests of incredible power sweep across the rocky terrain so frequently that they have shaped ecology and civilization alike.');
INSERT INTO book VALUES ( null, 'Words Of Radiance', 'Brandon Sanderson',  '1328', '419,485', 'The Stormlight Archive', 'Shallan Davar','WordsOfRadianceUK.jpg','978-0575093317','Brilliant but troubled Shallan strives along a parallel path. Despite being broken in ways she refuses to acknowledge, she bears a terrible burden: to somehow prevent the return of the legendary Voidbringers and the civilization-ending Desolation that will follow.');
INSERT INTO book VALUES ( null, 'Oathbringer', 'Brandon Sanderson', '1248', '481,980', 'The Stormlight Archive', 'Dalinar Kholin','Oathbringer.jpg','978-0765365293','Dalinar Kholins Alethi armies won a fleeting victory at a terrible cost: The enemy Parshendi summoned the violent Everstorm, which now sweeps the world with destruction, and in its passing awakens the once peaceful and subservient parshmen to the horror of their millennia-long enslavement by humans.');    
INSERT INTO book VALUES ( null, 'Rhythm of War', 'Brandon Sanderson', '1120', '200,450', 'The Stormlight Archive', 'Venli','RhythmOfWar.jpg' ,'978-0575093386','After forming a coalition of human resistance against the enemy invasion, Dalinar Kholin and his Knights Radiant have spent a year fighting a protracted, brutal war. Neither side has gained an advantage, and the threat of a betrayal by Dalinars crafty ally Taravangian looms over every strategic move.Now, as new technological discoveries by Navani Kholins scholars begin to change the face of the war, the enemy prepares a bold and dangerous operation. The arms race that follows will challenge the very core of the Radiant ideals, and potentially reveal the secrets of the ancient tower that was once the heart of their strength.'); 
INSERT INTO book VALUES ( null, 'Edgedancer', 'Brandon Sanderson', '272', '55,535', 'The Stormlight Archive', 'Lift','EdgedancerUK.jpg' ,'978-1473225039','Three years ago, Lift asked a goddess to stop her from growing older--a wish she believed was granted. Now, in Edgedancer, the barely teenage nascent Knight Radiant finds that time stands still for no one. Although the young Azish emperor granted her safe haven from an executioner she knows only as Darkness, court life is suffocating the free-spirited Lift, who cant help heading to Yeddaw when she hears the relentless Darkness is there hunting people like her with budding powers.');   

INSERT INTO book VALUES ( null, 'A Game of Thrones', 'George RR Martin', '864', '293,770', 'A Song of Ice and Fire', 'Ned Stark','ASOIAF1.jpg' ,'9780553573404','Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to.');
INSERT INTO book VALUES ( null, 'A Clash of Kings', 'George RR Martin', '1040', '323,640', 'A Song of Ice and Fire', 'Jon Snow','ASOIAF2.jpg' ,'9780553579901','A comet the color of blood and flame cuts across the sky. Two great leaders—Lord Eddard Stark and Robert Baratheon—who hold sway over an age of enforced peace are dead, victims of royal treachery. Now, from the ancient citadel of Dragonstone to the forbidding shores of Winterfell, chaos reigns. Six factions struggle for control of a divided land and the Iron Throne of the Seven Kingdoms, preparing to stake their claims through tempest, turmoil, and war.');

INSERT INTO user VALUES ( 'evan_scully', 'Evan Scully', 'sheogorath99?', 'Avatar.jpg');
INSERT INTO user VALUES ( 'Hero27', 'Jack Fortune', 'Password2', 'Avatar2.jpg');
INSERT INTO user VALUES ( 'TheLegend27', 'Jane Doe', 'Password3', 'Avatar3.jpg');

Select * from book;
