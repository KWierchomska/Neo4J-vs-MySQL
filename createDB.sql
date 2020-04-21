﻿use JamesBondMovies2

CREATE TABLE People (
	Id integer identity(1,1) primary key,
	Name varchar(100) not null,
	Role varchar(100)
) as node;

CREATE TABLE Film (
	Id integer identity(1,1) primary key,
	Year int not null,
	Box varchar(100) not null,
	Name varchar(100) not null
) as node;



CREATE TABLE Vehicle (
	Id integer identity(1,1) primary key,
	Brand varchar(100) not null,
	Model varchar(100) not null
) as node; 

CREATE TABLE AsBondIn AS EDGE;
CREATE TABLE IsBondGirlIn AS EDGE;
CREATE TABLE DirectorOf AS EDGE;
CREATE TABLE HasVehicle AS EDGE;

INSERT INTO People VALUES
('Terence Young', null),
('Guy Hamilton', null),
('Lewis Gilbert', null),
('Peter R. Hunt', null),
('John Glen', null),
('Martin Campbell', null),
('Roger Spottiswoode', null),
('Michael Apted', null),
('Lee Tamahori', null),
('Marc Forster', null),
('Sam Mendes', null),
('Sean Connery', 'James Bond'),
('George Lazenby', 'James Bond'),
('Roger Moore', 'James Bond'),
('Timothy Dalton', 'James Bond'),
('Pierce Brosnan', 'James Bond'),
('Daniel Craig', 'James Bond'),
('Eunice Gayson', 'Sylvia Trench'),
('Zena Marshall', 'Miss Taro'),
('Ursula Andress', 'Honey Ryder'),
('Aliza Gur', 'Vida'),
('Martine Beswick', 'Zora'),
('Daniela Bianchi', 'Tatiana Romanova'),
('Shirley Eaton','Jill Masterson'),
('Honor Blackman', 'Pussy Galore'),
('Molly Peters', 'Patricia Pat Fearing'),
('Luciana Paluzzi','Fiona Volpe'),
('Claudine Auger', 'Domino Derval'),
('Akiko Wakabayashi','Aki'),
('Karin Dor', 'Helga Brandt'),
('Mie Hama','Kissy Suzuki'),
('Diana Rigg','Teresa di Vicenzo'),
('Angela Scoular','Ruby Bartlett'),
('Catherine Schell', 'Nancy'),
('Jill St. John', 'Tiffany Case'),
('Madeline Smith', 'Miss Caruso'),
('Gloria Hendry', 'Rosie Carver'),
('Jane Seymour', 'Solitaire'),
('Maud Adams','Andrea Anders / Octopussy'),
('Britt Ekland','Mary Goodnight'),
('Sue Vanner','Log Cabin Girl'),
('Dawn Rodrigues', 'Harem Tent Girl'),
('Barbara Bach', 'Anya Amasova'),
('Corinne Cléry', 'Corinne Dufour'),
('Emily Bolton','Manuela'),
('Lois Chiles', 'Holly Goodhead'),
('Cassandra Harris', 'Countess Lisl von Schlaf'),
('Carole Bouquet', 'Melina Havelock'),
('Kristina Wayborn', 'Magda'),
('Mary Stävin', 'Kimberley Jones'),
('Grace Jones', 'May Day'),
('Fiona Fullerton', 'Pola Ivanova'),
('Tanya Roberts', 'Stacey Sutton'),
('Kell Tyler', 'Linda'),
('Maryam d''Abo','Kara Milovy'),
('Carey Lowell', 'Pam Bouvier'),
('Talisa Soto', 'Lupe Lamora'),
('Serena Gordon', 'Caroline'),
('Izabella Scorupco', 'Natalya Simonova'),
('Cecilie Thomsen', 'Prof. Inga Bergstrøm'),
('Teri Hatcher', 'Paris Carver'),
('Michelle Yeoh', 'Wai Lin'),
('Serena Scott Thomas', 'Dr. Molly Warmflash'),
('Sophie Marceau','Elektra King'),
('Denise Richards','Dr. Christmas Jones'),
('Halle Berry','Giacinta Jinx Johnson'),
('Rosamund Pike','Miranda Frost'),
('Eva Green','Vesper Lynd'),
('Gemma Arterton','Strawberry Fields'),
('Olga Kurylenko','Camille Montes'),
('Tonia Sotiropoulou','Bond''s Lover'),
('Bérénice Marlohe', 'Sévérine'),
('Stephanie Sigman', 'Estrella'),
('Monica Bellucci','Lucia Sciarra'),
('Léa Seydoux', 'Dr. Madeleine Swann');

select * from People

INSERT INTO Film VALUES
(1962, '440759072', 'Dr. No'),
(1963, '576277964', 'From Russia with Love'),
(1964, '912257512', 'Goldfinger'),
(1965, '1014941117', 'Thunderball'),
(1967, '756544419', 'You Only Live Twice'),
(1969, '505899782', 'On Her Majesty''s Secret Service'),
(1971, '648514469', 'Diamonds Are Forever'),
(1973, '825110761', 'Live and Let Die'),
(1974, '448249281', 'The Man with the Golden Gun'),
(1977, '692713752', 'The Spy Who Loved Me'),
(1979, '655872400', 'Moonraker'),
(1981, '486468881', 'For Your Eyes Only'),
(1983, '426244352', 'Octopussy'),
(1985, '321172633', 'A View to a Kill'),
(1987, '381088866', 'The Living Daylights'),
(1989, '285157191', 'Licence to Kill'),
(1995, '529548711', 'GoldenEye'),
(1997, '478946402', 'Tomorrow Never Dies'),
(1999, '491617153', 'The World Is Not Enough'),
(2002, '543639638', 'Die Another Day'),
(2006, '669789482', 'Casino Royale'),
(2008, '622246378', 'Quantum of Solace'),
(2012, '1108561008', 'Skyfall'),
(2015, '877470327', 'Spectre');

INSERT INTO Vehicle VALUES
('Alfa','Alfa Romeo GTV6'),
('Alfa','Alfa Romeo 159'),
('Alfa','Alfa Romeo 156'),
('AMC','AMC Hornet'),
('AMC','AMC Matador coupe'),
('AMC','AMC Matador sedan'),
('AMC','AMC Concord'),
('AMC','Jeep Wagoneer'),
('AMC','Jeep Cherokee'),
('AMC','Jeep CJ-7'),
('Aston Martin','DB5'),
('Aston Martin','DBS'),
('Aston Martin','V8 Vantage Volante'),
('Aston Martin','V12 Vanquish'),
('Aston Martin','DBS V12'),
('Aston Martin','DB10'),
('Audi','Audi 200'),
('Audi','Audi 100 Avant Quattro'),
('Audi','Audi A6'),
('Audi','Audi A5'),
('AvtoVAZ','VAZ-2106'),
('AvtoVAZ','VAZ-2105'),
('AvtoVAZ','VAZ-2121'),
('Bentley','1935 Bentley 3.5 Litredrophead coupé Park Ward'),
('Bentley','1937 Bentley 4½ LitreGurney Nutting 3-Position-Drophead Coupé'),
('BMW','518i'),
('BMW','Z3'),
('BMW','750iL'),
('BMW','R1200C motorcycle'),
('BMW','Z8'),
('Triumph','Triumph Stag'),
('BMC','MGB'),
('Leyland','Leyland Sherpa van'),
('Rover','Austin FX4 taxi'),
('Rover','Rover 800'),
('Daimler','Daimler Limousine'),
('Citroën','Citroën 11 Legere'),
('Citroën','Citroën 2CV'),
('Ford','Anglia 105E'),
('Ford','1964 Lincoln Continental'),
('Ford','Country Squire'),
('Ford','Ranchero'),
('Ford','Thunderbird'),
('Ford','MustangConvertible'),
('Ford','Fairlane Skyliner'),
('Ford','Lincoln Continental'),
('Ford','Mercury Cougar XR7'),
('Ford','Mustang Mach 1'),
('Ford','Econoline'),
('Ford','Custom 500'),
('Ford','Galaxie 500sedan'),
('Ford','LTD'),
('Ford','Taunus 2.3 Ghia'),
('Ford','Bronco'),
('Ford','Mercury Grand Marquis stretched limousine'),
('Ford','Lincoln Mark VII LSC'),
('Ford','Scorpio'),
('Ford','Fairlane'),
('Ford','Crown Victoria Police Interceptor'),
('Ford','Mondeo 2.5 Litre ST'),
('Ford','Ka'),
('Ford','Edge'),
('Ford','Bronco II'),
('Chevrolet','LaSalle hearse'),
('Chevrolet','Chevrolet Bel Airconvertible'),
('Chevrolet','Chevrolet Impalasedan'),
('Chevrolet','Vauxhall PA Crestasedan'),
('Chevrolet','Chevrolet C30 flatbed truck'),
('Chevrolet','Cadillac hearse'),
('Chevrolet','Cadillac Fleetwood 60 Special Brougham'),
('Chevrolet','Chevrolet Impala'),
('Chevrolet','Chevrolet Chevelle'),
('Chevrolet','Chevrolet Nova'),
('Chevrolet','Corvorado'),
('Chevrolet','Chevrolet Veraneioambulance'),
('Chevrolet','Chevrolet Corvette C4'),
('Chevrolet','Cadillac Fleetwood 75 limousine'),
('Chevrolet','GMC VanduraAmbulance'),
('Chevrolet','Chevrolet Caprice'),
('Chevrolet','Vauxhall Omega'),
('Chevrolet','Opel Senator'),
('Jaguar','XKR'),
('Jaguar','XJ8'),
('Jaguar','XJ9'),
('Jaguar','XJ10'),
('Jaguar','XJ'),
('Jaguar','C-X75'),
('Land Rover','Range Rover Classicconvertible'),
('Land Rover','Land Rover Series III'),
('Land Rover','Range Rover Classic'),
('Land Rover','Range Rover (P38A)'),
('Land Rover','Range Rover Sport'),
('Land Rover','Land Rover Defender'),
('Land Rover','Range Rover (L322)'),
('Land Rover','Land Rover Discovery 4'),
('Land Rover','Land Rover Defender Bigfoot'),
('Land Rover','Discovery Sport'),
('Lotus','Lotus Esprit S1'),
('Lotus','Lotus Esprit Turbo'),
('Mercedes Benz','180'),
('Mercedes Benz','220S'),
('Mercedes Benz','600'),
('Mercedes Benz','W115'),
('Mercedes Benz','450 SEL'),
('Mercedes Benz','250SE'),
('Mercedes Benz','W111'),
('Mercedes Benz','W140'),
('Mercedes Benz','W126s'),
('Mercedes Benz','S400'),
('Mercedes Benz','S-Class'),
('Rolls-Royce','Silver Wraith'),
('Rolls-Royce','Phantom III'),
('Rolls-Royce','Silver Shadow'),
('Rolls-Royce','Silver Wraith II'),
('Rolls-Royce','Phantom III'),
('Rolls-Royce','Silver Cloud II'),
('Sunbeam','Sunbeam Alpine'),
('Toyota','2000GT'),
('Lafer','MP Lafer Cabriolet'),
('Maserati','Biturbo'),
('GAZ','GAZ-31029'),
('ZAZ','ZAZ-965'),
('Volvo','Volvo S40'),
('Volkswagen', 'Beetle');

INSERT INTO AsBondIn VALUES 
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 1)),
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 3)),
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 4)),
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 5)),
((SELECT $node_id FROM People WHERE ID = 13), (SELECT $node_id FROM Film WHERE ID = 6)),
((SELECT $node_id FROM People WHERE ID = 12), (SELECT $node_id FROM Film WHERE ID = 7)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 8)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 9)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 10)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 11)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 12)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 13)),
((SELECT $node_id FROM People WHERE ID = 14), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 15), (SELECT $node_id FROM Film WHERE ID = 15)),
((SELECT $node_id FROM People WHERE ID = 15), (SELECT $node_id FROM Film WHERE ID = 16)),
((SELECT $node_id FROM People WHERE ID = 16), (SELECT $node_id FROM Film WHERE ID = 17)),
((SELECT $node_id FROM People WHERE ID = 16), (SELECT $node_id FROM Film WHERE ID = 18)),
((SELECT $node_id FROM People WHERE ID = 16), (SELECT $node_id FROM Film WHERE ID = 19)),
((SELECT $node_id FROM People WHERE ID = 16), (SELECT $node_id FROM Film WHERE ID = 20)),
((SELECT $node_id FROM People WHERE ID = 17), (SELECT $node_id FROM Film WHERE ID = 21)),
((SELECT $node_id FROM People WHERE ID = 17), (SELECT $node_id FROM Film WHERE ID = 22)),
((SELECT $node_id FROM People WHERE ID = 17), (SELECT $node_id FROM Film WHERE ID = 23)),
((SELECT $node_id FROM People WHERE ID = 17), (SELECT $node_id FROM Film WHERE ID = 24));
/*
SELECT Film.Name
FROM People, AsBondIn, Film
WHERE MATCH (People-(AsBondIn)->Film)
AND People.Name = 'Daniel Craig';
*/

INSERT INTO DirectorOf VALUES 
((SELECT $node_id FROM People WHERE ID = 1), (SELECT $node_id FROM Film WHERE ID = 1)),
((SELECT $node_id FROM People WHERE ID = 1), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 2), (SELECT $node_id FROM Film WHERE ID = 3)),
((SELECT $node_id FROM People WHERE ID = 1), (SELECT $node_id FROM Film WHERE ID = 4)),
((SELECT $node_id FROM People WHERE ID = 3), (SELECT $node_id FROM Film WHERE ID = 5)),
((SELECT $node_id FROM People WHERE ID = 4), (SELECT $node_id FROM Film WHERE ID = 6)),
((SELECT $node_id FROM People WHERE ID = 2), (SELECT $node_id FROM Film WHERE ID = 7)),
((SELECT $node_id FROM People WHERE ID = 2), (SELECT $node_id FROM Film WHERE ID = 8)),
((SELECT $node_id FROM People WHERE ID = 2), (SELECT $node_id FROM Film WHERE ID = 9)),
((SELECT $node_id FROM People WHERE ID = 3), (SELECT $node_id FROM Film WHERE ID = 10)),
((SELECT $node_id FROM People WHERE ID = 3), (SELECT $node_id FROM Film WHERE ID = 11)),
((SELECT $node_id FROM People WHERE ID = 5), (SELECT $node_id FROM Film WHERE ID = 12)),
((SELECT $node_id FROM People WHERE ID = 5), (SELECT $node_id FROM Film WHERE ID = 13)),
((SELECT $node_id FROM People WHERE ID = 5), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 5), (SELECT $node_id FROM Film WHERE ID = 15)),
((SELECT $node_id FROM People WHERE ID = 5), (SELECT $node_id FROM Film WHERE ID = 16)),
((SELECT $node_id FROM People WHERE ID = 6), (SELECT $node_id FROM Film WHERE ID = 17)),
((SELECT $node_id FROM People WHERE ID = 7), (SELECT $node_id FROM Film WHERE ID = 18)),
((SELECT $node_id FROM People WHERE ID = 8), (SELECT $node_id FROM Film WHERE ID = 19)),
((SELECT $node_id FROM People WHERE ID = 9), (SELECT $node_id FROM Film WHERE ID = 20)),
((SELECT $node_id FROM People WHERE ID = 6), (SELECT $node_id FROM Film WHERE ID = 21)),
((SELECT $node_id FROM People WHERE ID = 10), (SELECT $node_id FROM Film WHERE ID = 22)),
((SELECT $node_id FROM People WHERE ID = 11), (SELECT $node_id FROM Film WHERE ID = 23)),
((SELECT $node_id FROM People WHERE ID = 11), (SELECT $node_id FROM Film WHERE ID = 24));


INSERT INTO IsBondGirlIn VALUES 
((SELECT $node_id FROM People WHERE ID = 18), (SELECT $node_id FROM Film WHERE ID = 1)),
((SELECT $node_id FROM People WHERE ID = 19), (SELECT $node_id FROM Film WHERE ID = 1)),
((SELECT $node_id FROM People WHERE ID = 20), (SELECT $node_id FROM Film WHERE ID = 1)),
((SELECT $node_id FROM People WHERE ID = 18), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 21), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 22), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 23), (SELECT $node_id FROM Film WHERE ID = 2)),
((SELECT $node_id FROM People WHERE ID = 24), (SELECT $node_id FROM Film WHERE ID = 3)),
((SELECT $node_id FROM People WHERE ID = 25), (SELECT $node_id FROM Film WHERE ID = 3)),
((SELECT $node_id FROM People WHERE ID = 26), (SELECT $node_id FROM Film WHERE ID = 4)),
((SELECT $node_id FROM People WHERE ID = 27), (SELECT $node_id FROM Film WHERE ID = 4)),
((SELECT $node_id FROM People WHERE ID = 28), (SELECT $node_id FROM Film WHERE ID = 4)),
((SELECT $node_id FROM People WHERE ID = 29), (SELECT $node_id FROM Film WHERE ID = 5)),
((SELECT $node_id FROM People WHERE ID = 30), (SELECT $node_id FROM Film WHERE ID = 5)),
((SELECT $node_id FROM People WHERE ID = 31), (SELECT $node_id FROM Film WHERE ID = 5)),
((SELECT $node_id FROM People WHERE ID = 32), (SELECT $node_id FROM Film WHERE ID = 6)),
((SELECT $node_id FROM People WHERE ID = 33), (SELECT $node_id FROM Film WHERE ID = 6)),
((SELECT $node_id FROM People WHERE ID = 34), (SELECT $node_id FROM Film WHERE ID = 6)),
((SELECT $node_id FROM People WHERE ID = 35), (SELECT $node_id FROM Film WHERE ID = 7)),
((SELECT $node_id FROM People WHERE ID = 36), (SELECT $node_id FROM Film WHERE ID = 8)),
((SELECT $node_id FROM People WHERE ID = 37), (SELECT $node_id FROM Film WHERE ID = 8)),
((SELECT $node_id FROM People WHERE ID = 38), (SELECT $node_id FROM Film WHERE ID = 8)),
((SELECT $node_id FROM People WHERE ID = 39), (SELECT $node_id FROM Film WHERE ID = 9)),
((SELECT $node_id FROM People WHERE ID = 40), (SELECT $node_id FROM Film WHERE ID = 9)),
((SELECT $node_id FROM People WHERE ID = 41), (SELECT $node_id FROM Film WHERE ID = 10)),
((SELECT $node_id FROM People WHERE ID = 42), (SELECT $node_id FROM Film WHERE ID = 10)),
((SELECT $node_id FROM People WHERE ID = 43), (SELECT $node_id FROM Film WHERE ID = 10)),
((SELECT $node_id FROM People WHERE ID = 44), (SELECT $node_id FROM Film WHERE ID = 11)),
((SELECT $node_id FROM People WHERE ID = 45), (SELECT $node_id FROM Film WHERE ID = 11)),
((SELECT $node_id FROM People WHERE ID = 46), (SELECT $node_id FROM Film WHERE ID = 11)),
((SELECT $node_id FROM People WHERE ID = 47), (SELECT $node_id FROM Film WHERE ID = 12)),
((SELECT $node_id FROM People WHERE ID = 48), (SELECT $node_id FROM Film WHERE ID = 12)),
((SELECT $node_id FROM People WHERE ID = 49), (SELECT $node_id FROM Film WHERE ID = 13)),
((SELECT $node_id FROM People WHERE ID = 39), (SELECT $node_id FROM Film WHERE ID = 13)),
((SELECT $node_id FROM People WHERE ID = 50), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 51), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 52), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 53), (SELECT $node_id FROM Film WHERE ID = 14)),
((SELECT $node_id FROM People WHERE ID = 54), (SELECT $node_id FROM Film WHERE ID = 15)),
((SELECT $node_id FROM People WHERE ID = 55), (SELECT $node_id FROM Film WHERE ID = 15)),
((SELECT $node_id FROM People WHERE ID = 56), (SELECT $node_id FROM Film WHERE ID = 16)),
((SELECT $node_id FROM People WHERE ID = 57), (SELECT $node_id FROM Film WHERE ID = 16)),
((SELECT $node_id FROM People WHERE ID = 58), (SELECT $node_id FROM Film WHERE ID = 17)),
((SELECT $node_id FROM People WHERE ID = 59), (SELECT $node_id FROM Film WHERE ID = 17)),
((SELECT $node_id FROM People WHERE ID = 60), (SELECT $node_id FROM Film WHERE ID = 18)),
((SELECT $node_id FROM People WHERE ID = 61), (SELECT $node_id FROM Film WHERE ID = 18)),
((SELECT $node_id FROM People WHERE ID = 62), (SELECT $node_id FROM Film WHERE ID = 18)),
((SELECT $node_id FROM People WHERE ID = 63), (SELECT $node_id FROM Film WHERE ID = 19)),
((SELECT $node_id FROM People WHERE ID = 64), (SELECT $node_id FROM Film WHERE ID = 19)),
((SELECT $node_id FROM People WHERE ID = 65), (SELECT $node_id FROM Film WHERE ID = 19)),
((SELECT $node_id FROM People WHERE ID = 66), (SELECT $node_id FROM Film WHERE ID = 20)),
((SELECT $node_id FROM People WHERE ID = 67), (SELECT $node_id FROM Film WHERE ID = 20)),
((SELECT $node_id FROM People WHERE ID = 68), (SELECT $node_id FROM Film WHERE ID = 21)),
((SELECT $node_id FROM People WHERE ID = 69), (SELECT $node_id FROM Film WHERE ID = 22)),
((SELECT $node_id FROM People WHERE ID = 70), (SELECT $node_id FROM Film WHERE ID = 22)),
((SELECT $node_id FROM People WHERE ID = 71), (SELECT $node_id FROM Film WHERE ID = 23)),
((SELECT $node_id FROM People WHERE ID = 72), (SELECT $node_id FROM Film WHERE ID = 23)),
((SELECT $node_id FROM People WHERE ID = 73), (SELECT $node_id FROM Film WHERE ID = 24)),
((SELECT $node_id FROM People WHERE ID = 74), (SELECT $node_id FROM Film WHERE ID = 24)),
((SELECT $node_id FROM People WHERE ID = 75), (SELECT $node_id FROM Film WHERE ID = 24));
