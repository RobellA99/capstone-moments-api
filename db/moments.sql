DROP DATABASE IF EXISTS `moments`;

CREATE DATABASE `moments`;

USE `moments`;

CREATE TABLE `monuments` (
    `id` int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    `name` varchar(255) NOT NULL, 
    `location` varchar(255) NOT NULL,
    `latitude` float NOT NULL,
    `longitude` float NOT NULL,
    `category` varchar(255) NOT NULL, 
    `description` TEXT NOT NULL,
    INDEX (`category`) 
);

CREATE TABLE `category_images` (
    `id` int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category` varchar(255) NOT NULL,
    `image_url` varchar(2083) NOT NULL, 
    FOREIGN KEY (`category`) REFERENCES `monuments`(`category`) ON DELETE CASCADE
);

INSERT INTO `monuments` VALUES 
(1, "Big Ben", "London, UK", 51.5007, -0.1246, "Famous Towers & Structures", "One of London's most recognizable landmarks, Big Ben is the clock tower attached to the Houses of Parliament. It is a symbol of British democracy and a masterpiece of 19th-century engineering."),
(2, "Tower of London", "London, UK", 51.5081, -0.0759, "Historic Landmarks", "A medieval fortress and former royal palace, the Tower of London is famous for its role in British history, from housing the Crown Jewels to being a notorious prison. It dates back to the 11th century and is a UNESCO World Heritage Site."),
(3, "Buckingham Palace", "London, UK", 51.5014, -0.1419, "Royal Residences", "The official residence of the British monarch, Buckingham Palace is famous for the Changing of the Guard ceremony and its stunning neoclassical facade. It serves as both a working palace and a symbol of the British monarchy."),
(4, "London Eye", "London, UK", 51.5033, -0.1196, "Modern Attractions", "A giant observation wheel on the South Bank of the River Thames, the London Eye offers breathtaking panoramic views of the city. It is one of the most popular tourist attractions in the UK and a symbol of modern London."),
(5, "St Paul's Cathedral", "London, UK", 51.5138, -0.0984, "Religious & Architectural Marvels", "A masterpiece of Baroque architecture, St. Paul's Cathedral is known for its massive dome and historical significance, including hosting the wedding of Prince Charles and Princess Diana. Its Whispering Gallery offers unique acoustics and stunning interior views."),
(6, "Westminster Abbey", "London, UK", 51.4993, -0.1273, "Historic Landmarks", "This iconic Gothic church has been the site of British coronations since 1066 and hosts royal weddings and funerals. Its stunning architecture and historical significance make it one of London’s most important religious sites."),
(7, "The Shard", "London, UK", 51.5045, -0.0865, "Famous Towers & Structures", "Standing as the tallest building in the UK, The Shard offers breathtaking panoramic views of London from its observation deck. Its sleek glass design contrasts with the city's historic skyline."),
(8, "Trafalgar Square", "London, UK", 51.5080, -0.1281, "Cultural & Public Spaces", "A major public space in London, Trafalgar Square is home to Nelson’s Column and serves as a central gathering point for events and celebrations. It is surrounded by historic buildings, including the National Gallery."),
(9, "British Museum", "London, UK", 51.5194, -0.1270, "Cultural & Public Spaces", "One of the world’s most famous museums, the British Museum houses a vast collection of art and artifacts from human history, including the Rosetta Stone and Egyptian mummies. Entry is free, making it a must-visit for history lovers."),
(10, "Kensington Palace", "London, UK", 51.5059, -0.1886, "Royal Residences", "A historic royal residence and current home to several members of the royal family, Kensington Palace is set within beautiful gardens. It has a rich history, once being the childhood home of Queen Victoria."),
(11, "Houses of Parliament", "London, UK", 51.4995, -0.1248, "Historic Landmarks", "Also known as the Palace of Westminster, this Gothic Revival building is the home of the UK government. It features the House of Commons, the House of Lords, and the iconic Big Ben clock tower."),
(12, "Hampton Court Palace", "London, UK", 51.4036, -0.3372, "Historic Landmarks", "A stunning Tudor palace once home to Henry VIII, Hampton Court is famous for its Great Hall, beautiful gardens, and the famous hedge maze."),
(13, "Windsor Castle", "London, UK", 51.4839, -0.6044, "Historic Landmarks", "The oldest and largest occupied castle in the world, Windsor Castle has been a royal residence for over 1,000 years. It remains an official home of the British monarch."),
(14, "Churchill War Rooms", "London, UK", 51.5023, -0.1292, "Historic Landmarks", "The underground bunker where Winston Churchill and his government directed operations during World War II. The site now serves as a museum detailing Britain’s wartime history."),
(15, "Tower Bridge", "London, UK", 51.5055, -0.0754, "Famous Towers & Structures", "One of London's most famous bridges, Tower Bridge is a bascule and suspension bridge that lifts to allow ships to pass through. Visitors can walk across the high-level glass floor walkway for stunning Thames views."),
(16, "The Gherkin", "London, UK", 51.5144, -0.0803, "Famous Towers & Structures", "A modern skyscraper in London's financial district, The Gherkin is known for its unique, curved glass structure. It is an architectural icon of the city’s skyline."),
(17, "Leicester Square", "London, UK", 51.5100, -0.1300, "Cultural & Public Spaces", "A bustling entertainment hub, Leicester Square is famous for its cinemas, theaters, and red-carpet film premieres. It is home to the iconic Odeon cinema and the historic Hippodrome."),
(18, "Covent Garden", "London, UK", 51.5122, -0.1227, "Cultural & Public Spaces", "A lively district known for its street performers, boutique shops, and the Royal Opera House. Covent Garden Market is a must-visit for unique gifts and gourmet treats."),
(19, "Piccadilly Circus", "London, UK", 51.5098, -0.1342, "Cultural & Public Spaces", "Known for its bright neon billboards and the Shaftesbury Memorial Fountain, Piccadilly Circus is a major traffic intersection and meeting point in central London."),
(20, "St. Martin-in-the-Fields", "London, UK", 51.5081, -0.1261, "Religious & Architectural Marvels", "A historic church located near Trafalgar Square, St. Martin-in-the-Fields is known for its music concerts and social outreach programs. Its crypt café is a hidden gem for visitors."),
(21, "Sky Garden", "London, UK", 51.5116, -0.0837, "Modern Attractions", "A stunning indoor garden located at the top of the 'Walkie Talkie' building (20 Fenchurch Street). It offers breathtaking 360-degree views of London."),
(22, "O2 Arena", "London, UK", 51.5030, 0.0032, "Modern Attractions", "Originally built as the Millennium Dome, the O2 Arena is now one of the world’s busiest music and events venues. It also features restaurants, an indoor trampoline park, and a climbing experience."),
(23, "Emirates Air Line Cable Car", "London, UK", 51.5028, 0.0045, "Modern Attractions", "A unique aerial transport link crossing the River Thames, offering fantastic views of the city. It connects Greenwich Peninsula to the Royal Docks."),
(24, "Southwark Cathedral", "London, UK", 51.5063, -0.0903, "Religious & Architectural Marvels", "A beautiful Gothic cathedral near London Bridge, Southwark Cathedral is one of the oldest places of Christian worship in the city. It hosts concerts and events alongside regular services."),
(25, "Temple Church", "London, UK", 51.5138, -0.1111, "Religious & Architectural Marvels", "Built by the Knights Templar in the 12th century, Temple Church is famous for its circular nave and historical significance in medieval England. It appears in Dan Brown’s *The Da Vinci Code*.");

INSERT INTO `category_images` (`category`, `image_url`) VALUES
-- Famous Towers & Structures
("Famous Towers & Structures", "/assets/images/big-ben.jpg"),
("Famous Towers & Structures", "/assets/images/gherkin.jpg"),
("Famous Towers & Structures", "/assets/images/shard.jpg"),
("Famous Towers & Structures", "/assets/images/tower-bridge.jpg"),

-- Modern Attractions
("Modern Attractions", "/assets/images/london-eye.jpg"),
("Modern Attractions", "/assets/images/sky-garden.jpg"),
("Modern Attractions", "/assets/images/02-arena.jpg"),
("Modern Attractions", "/assets/images/cable-car.jpg"),

-- Cultural & Public Spaces
("Cultural & Public Spaces", "/assets/images/trafalgar-square.jpg"),
("Cultural & Public Spaces", "/assets/images/british-museum.jpg"),
("Cultural & Public Spaces", "/assets/images/covent-garden.jpg"),
("Cultural & Public Spaces", "/assets/images/picadilly-circus.jpg"),
("Cultural & Public Spaces", "/assets/images/leicester-square.jpg"),

-- Historic Landmarks
("Historic Landmarks", "/assets/images/tower-of-london.jpg"),
("Historic Landmarks", "/assets/images/westminster-abbey.jpg"),
("Historic Landmarks", "/assets/images/houses-of-parliament.jpg"),
("Historic Landmarks", "/assets/images/churchill-war-rooms.jpg"),
("Historic Landmarks", "/assets/images/hampton-court-palace.jpg"),
("Historic Landmarks", "/assets/images/windsor-castle.jpg"),

-- Royal Residences
("Royal Residences", "/assets/images/buckingham-palace.jpg"),
("Royal Residences", "/assets/images/kensington-palace.jpg"),

-- Religious & Architectural Marvels
("Religious & Architectural Marvels", "/assets/images/st-pauls.jpg"),
("Religious & Architectural Marvels", "/assets/images/st-martin.jpg"),
("Religious & Architectural Marvels", "/assets/images/southwark-cathedral.jpg"),
("Religious & Architectural Marvels", "/assets/images/temple-church.jpg");