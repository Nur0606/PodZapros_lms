create type gender as enum('Male','Female');
create type genre as enum('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
create table authors(
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar,
                        gender gender
);

create table publishers(
                           id serial primary key ,
                           name varchar
);
create table books(
                      id serial primary key ,
                      name varchar,
                      country varchar,
                      publisher_year date,
                      price numeric,
                      genre genre
);
create table languages(
                          id serial primary key ,
                          language varchar
);
alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);

alter table languages  alter language set not null;
alter table authors  add unique (email);

insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '25-9-1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '31-10-1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '16-5-1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '24-4-1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '3-7-1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '29-12-1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '14-12-1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '29-1-1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '17-11-1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '8-9-1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '3-12-1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '28-8-1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '28-3-1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '5-8-1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '17-10-1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, publisher_year, price, genre, language_id, publisher_id,author_id )
values('Taina', 'Russia', '12-11-2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '9-12-2004', '446', 'ROMANS', '5', '13', '11'),
      ('Homo Faber', 'Germany', '10-4-2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '1-2-2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '11-7-2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '12-1-2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '6-12-2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '5-9-2022', '349',  'HISTORY', '4', '4', '2'),
      ('Emil und die Detektive', 'Germany', '11-6-2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '1-3-2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '3-2-2012', '763', 'ROMANS', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '10-3-2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '5-10-2019', '378', 'ROMANS', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '24-9-2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '2-8-2015', '502', 'ROMANS', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '19-6-2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '10-3-2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '14-11-2017', '422', 'ROMANS', '2', '8', '5'),
      ('Lao Tse', 'China', '16-7-2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '12-4-2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '4-1-2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '6-1-2020', '420', 'ROMANS', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '13-2-2008', '396', 'ROMANS','1', '9', '4'),
      ('Die R uber', 'Germany', '25-6-2020', '300', 'ROMANS', '3', '7', '12'),
      ('Jung Chang', 'China', '14-5-2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '10-4-2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12-12-2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '9-1-2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '7-2-2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '11-10-2021', '599', 'BIOGRAPHY','1', '2', '15');


-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select name,publisher_year,genre from books ;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select  distinct country from authors ;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select name,publisher_year from books where extract(year from publisher_year) between 2020 and 2023;
-- 4.Детектив китептер жана алардын аттары чыксын.
select genre as janr,name as book_name from books where genre ='DETECTIVE';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name,' ',last_name) as author from authors;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select country,concat(first_name,' ',last_name) as full_name from authors where country in ('Germany','France') order by first_name,last_name;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын.
select b.name,b.publisher_year,b.genre,b.price from books b where price<500 and genre not in ('ROMANS');
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where gender='Female' order by id limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where gender='Female' and email like '%.com' and first_name like '____';
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country,count(*) as author_counts from authors group by country ;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country from (select country, count(a.*) as author_count from authors a group by country) as country_counts where author_count = 3 order by country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select distinct b.genre, sum(price) as jalpy_summa from books b group by b.genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select genre,min(price) from books where genre in ('ROMANS','DETECTIVE') group by genre;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select genre,count(*) as books_counts from books where genre in (select b.genre from books b where b.genre in ('HISTORY','BIOGRAPHY')) group by genre;
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.name as book_name,p.name as publisher_name,language from publishers p join books b on p.id=b.publisher_id inner join languages l on b.language_id=l.id;
-- 16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select a.*,p.* from authors a left join books b on a.id=b.author_id left join publishers p on b.publisher_id=p.id;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select * from authors a left join books b on a.id=b.author_id;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select l.language,count(b.*) as book_count from languages l inner join books b on l.id=b.language_id group by l.language  order by count(b.*) desc;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.name as publisher_name,sum(b.price) as zarabaotka from books b inner join publishers p on b.publisher_id=p.id group by p.name;
-- 20. 2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select b.name,b.publisher_year,a.first_name,a.last_name from books b inner join authors a on b.author_id=a.id where extract(year from publisher_year)between 2010 and 2015;
-- 21. 2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select b.name,b.publisher_year,a.first_name,a.last_name , sum(b.price) from books b inner join authors a on b.author_id=a.id where extract(year from publisher_year)between 2010 and 2015 group by b.name, b.publisher_year, a.first_name, a.last_name;


