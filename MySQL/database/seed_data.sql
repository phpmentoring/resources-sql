/*
* Use this file to load in some seed data.
*
* $ mysql -u root -p blog_demo < seed_data.sql
*
*/

/* Enable deletion of rows with foreign key constraints by disabled checks */

SET foreign_key_checks = 0;


/* Delete all Tag records then re-load sample data */

TRUNCATE TABLE `tag`;

INSERT INTO `tag` (id, `name`) VALUES
    (1, 'PHP'),
    (2, 'Quality Assurance'),
    (3, 'MySQL'),
    (4, 'php|tek'),
    (5, 'Arrays'),
    (6, 'PHPUnit'),
    (7, 'Refactoring'),
    (8, 'Tools'),
    (9, 'Build Process'),
    (10, 'Deployment'),
    (11, 'Integration'),
    (12, 'dpc12'),
    (13, 'PHPDocumentor'),
    (14, 'Security'),
    (15, 'Design Patterns'),
    (16, 'phpnw11'),
    (17, 'dpc11'),
    (18, 'Webservices'),
    (19, 'Optimisation')
    ;


/* Delete all author records then re-load sample data */

TRUNCATE TABLE `author`;

INSERT INTO `author` (`id`, `name`, username ) VALUES 
     (1, 'Joe Blogs','blowFish'),
     (2, 'Ann Other','blog_queen'),
     (3, 'John Smith','smithie'),
     (4, 'Howard Jones','solo')  
     ;


/* Delete all Category records then re-load sample data */

TRUNCATE TABLE `category`;

INSERT INTO `category` (`id`, `parent_id`, `name`) VALUES
	(8, NULL, 'PHP'),
	(9, 8, 'Quality Assurance'),
	(10, NULL, 'Databases'),
	(11, 10, 'MySQL'),
	(12, 9, 'Test Driven Development'),
	(13, 8, 'Object Orientation'),
	(14, 13, 'Design Patterns'),
	(15, 10, 'CouchDB'),
	(16, 8, 'Frameworks'),
	(17, 16, 'Zend Framework'),
	(18, 16, 'Symfony'),
	(19, 16, 'Symfony2'),
	(20, 8, 'Webservices')
	;

/* Delete all post records then re-load sample data */

TRUNCATE TABLE `post`;

INSERT INTO `post` (author_id, `slug`, title, `content`, published, created, updated) VALUES
    (1, 
     'mysql-queries-the-right-way',
     'MySQL queries - the right way', 
     'Sweet jelly beans bonbon jelly beans dragée. Lollipop I love marshmallow chocolate faworki gingerbread jelly-o icing faworki. Lollipop jelly beans chupa chups fruitcake. Apple pie cheesecake tart. Gummi bears sugar plum soufflé chupa chups. Tiramisu brownie macaroon I love soufflé carrot cake chocolate bar. I love chocolate I love lollipop. Pastry tootsie roll cupcake lollipop dragée marzipan.  Tootsie roll liquorice macaroon lollipop gingerbread jelly beans. Soufflé applicake tiramisu sweet roll liquorice lemon drops toffee macaroon. Ice cream oat cake ice cream oat cake. Muffin cookie tiramisu cheesecake danish gingerbread biscuit. I love marshmallow candy sugar plum fruitcake gingerbread chocolate oat cake. Chocolate bar I love tart liquorice halvah pastry wypas I love macaroon. Dragée sweet lemon drops jelly beans wypas cake. Tiramisu danish jelly-o cheesecake topping pie candy. Cotton candy soufflé powder chocolate I love tart brownie. Chocolate bar cake pastry I love chocolate cake topping marshmallow.  Croissant jelly beans topping dragée dessert marshmallow gummies biscuit I love. I love icing I love jelly donut topping fruitcake gingerbread topping. Gingerbread dragée bear claw I love bear claw cookie pie brownie I love. Tart dessert bonbon faworki sesame snaps. Bonbon cupcake cookie. Fruitcake toffee I love I love bonbon biscuit jujubes candy canes I love. Halvah cotton candy sugar plum bear claw sesame snaps jujubes carrot cake soufflé muffin. Sugar plum oat cake I love cupcake.',
     '08-05-2011 17:54:02',
     '08-04-2011 23:04:52',
     '00-00-0000 00:00:00')
     ;
     

/* Delete all post_category records then re-load sample data */

TRUNCATE TABLE `post_category`;

INSERT INTO post_category (post_id, category_id) VALUES 
     (1, 11)
     ;

/* Delete all post_tag records then re-load sample data */

TRUNCATE TABLE `post_tag`;

INSERT INTO post_tag (post_id, tag_id) VALUES 
     (1, 3),
     (1, 19)
     ;


/* Reenable foreign key constrain checks in MySQL */

SET foreign_key_checks = 1;
