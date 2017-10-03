-- drop TABLE employee
 -- todo таблица добавлена на работе, выполнить этот файл дома
CREATE TABLE employee (
  id             INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fio            VARCHAR(255) NOT NULL,
  position       VARCHAR(255) NULL,  -- должность
  Address        VARCHAR(255) NULL,
  phone          VARCHAR(255) NULL,
  state          VARCHAR(255) NULL, -- статус: работает/уволен
  familiia 	     VARCHAR(255) NULL,
  name	         VARCHAR(255) NULL,
  otchestvo      VARCHAR(255) NULL,
  birthday       DATE NULL,  -- дата рождения
  email          VARCHAR(255) NULL,
  comment        VARCHAR(255) NULL,
  isp_obiaz      VARCHAR(255) NULL
)
  ENGINE = InnoDB;

select
  DELETE from employee

insert into employee VALUES (1,'Аввакумова В.','маляр','Новомосковск, ул. Кирова, 6 Б','097-047-45-13','работает','Аввакумова',DEFAULT,DEFAULT,'1972-01-20',DEFAULT,DEFAULT,NULL );
insert into employee values (2,'Алуева Т.Н.','маляр','Синельниково, ул. Бараболкина, 107','097-047-45-13','работает','Алуева',null,null,'1972-01-20',null,null,null);
insert into employee values (3,'Аркадьев Д.А.','дизайнер-проектант','Титова, 23, кв. 49','097-712-58-40','работает','Аркадьев',null,null,'1982-03-13',null,null,null);
insert into employee values (4,'Базиленко А.О.','сборщик','пр. Слобожанский, 103/63','097-507-03-39','работает','Базиленко',null,null,'1973-06-30','dk300673ada@gmail.com',null,null);
insert into employee values (5,'Вахрушев С.Ю.','студент-слесарь','с. Хуторо-Чаплине, вул. Партизанська, 112','050-655-55-68','работает','Вахрушев',null,null,'1978-07-27',null,null,null);
insert into employee values (6,'Гаращенко Т.С.','маляр','ул. Ген. Захарченка, 6/55','067-69-98-389','работает','Гаращенко',null,null,'1999-09-09',null,null,null);
insert into employee values (7,'Грушевский К.А.','слесарь','ул. Семафорная, д. 34, корп. Д, кв. 17','098-73-86-875','работает','Грушевский',null,null,'1996-08-19',null,null,null);
insert into employee values (8,'Гунько Ярослав Алекс.','монтажник','ул. Баглия, 4','067-315-01-68','работает','Гунько',null,null,'1979-04-11',null,null,null);
insert into employee values (9,'Гурин В.Г.','нач.цеха','ул. Титова, 27/35',null,'работает','Гурин',null,null,'1998-05-25',null,null,null);
insert into employee values (10,'Джафаров С.','студент-слесарь','пер. Новозаводской, 3','096-723-52-76','работает','Джафаров',null,null,'1962-03-29','dk290362gvg@gmail.com',null,null);
insert into employee values (11,'Завалий Николай Николаевич','нач. участка малярки',null,'063-459-222-0','работает','Завалий',null,null,'1999-08-13',null,null,null);
insert into employee values (12,'Захарков С.С.','слесарь','ул. Молодогвардейская, 81В/3','068-411-59-76','работает','Захарков',null,null,'1900-01-00',null,'095-692-56-13',null);
insert into employee values (13,'Карулик В.Е.','водитель-монтажник','пгт. Губиниха, ул. Заводская, 20','066-369-55-72','работает','Карулик',null,null,'1959-04-03',null,null,null);
insert into employee values (14,'Ким Е.А.',null,null,'073-036-36-79','работает','Ким',null,null,'1970-03-27',null,null,null);
insert into employee values (15,'Ковинчук В.И.','кузнец','ул. Усенко, 5/77','067-265-19-16','работает','Ковинчук',null,null,'1982-12-10','dd101282kea@gmail.com',null,null);
insert into employee values (16,'Ковтун А.В.','резчик','г. Синельниково, ул. Московская, 46/2','067-89-27-278','работает','Коробченко',null,null,'1961-01-07',null,null,null);
insert into employee values (17,'Коробченко В.В.','кузнец',null,'063-202-53-02','работает','Ковтун',null,null,'1986-09-26',null,null,null);
insert into employee values (18,'Кужильский Е.О.','монтажник, слесарь','пров. Червонопролетарський, 32','067-921-74-99','работает','Кужильский',null,null,'1970-02-08',null,null,null);
insert into employee values (19,'Кучма Д.Ю.','водитель-монтажник','ул. Амурская, 166','093-99-86-706','работает','Кучма',null,null,'1998-05-09',null,null,null);
insert into employee values (20,'Лаврушин Н.А.','сварщик-сборщик',null,'093-277-72-54','работает','Лаврушин',null,null,'1997-04-19',null,null,null);
insert into employee values (21,'Левченко Л.Л.','сборщик',null,'067-646-27-85','работает','Левченко',null,null,'1900-01-00',null,null,null);
insert into employee values (22,'Луцак А.В.','зам.директора',null,'063-125-59-92','работает','Луцак',null,null,'1971-01-21',null,null,null);
insert into employee values (23,'Лысяк В.В.','дизайнер-проектант','ж/м Топль-3, д. 57, кв. 50','067-782-49-02','работает','Лысяк',null,null,'1965-03-14','pikuzzza65@gmail.com',null,null);
insert into employee values (24,'Масалыкин В.Н.','кузнец','ул. Спартака, 36','097-905-79-41','работает','Масалыкин',null,null,'1976-08-06','lysyak.vv@gmail.com','vovanlysyak@gmail.com',null);
insert into employee values (25,'Михайловский В.В.','плазменщик','ул. Ногинская, 34/7','066-94-39-146','работает','Михайловский',null,null,'1976-02-26',null,null,null);
insert into employee values (26,'Музыка В.З.','дизайнер-проектант','ул. Коммунаровская, 1/336','066-926-69-28','работает','Музыка',null,null,'1985-03-19',null,null,null);
insert into employee values (27,'Накрапас А.В.','студент-слесарь','с. Миколаївка, вул. Шевченко, 1','097-940-82-29','работает','Накрапас',null,null,'1966-02-20','vladimir.myzuka2@gmail.com',null,null);
insert into employee values (28,'Носуля С.А.','дизайнер-художник','ул. Мандрыковская, 167/142','095-53-17-420','работает','Носуля',null,null,'2000-10-01',null,null,null);
insert into employee values (29,'Олексюк С.В.','механик','ул. Мониторная, 1/39','096-378-05-52','работает','Олексюк',null,null,'1965-03-17','svetlana.artkovka@gmail.com',null,null);
insert into employee values (30,'Осадченко С.А.','плазма',null,'050-759-6666','работает','Осадченко',null,null,'1964-07-23',null,null,null);
insert into employee values (31,'Папушников А.','дизайнер-проектант','Наб.Победы, 44Д',null,'работает','Папушников',null,null,'1900-01-00',null,null,null);
insert into employee values (32,'Передерий Р. А.','монтажник',null,'067-758-40-62','работает','Передерий',null,null,'1965-05-21','dk210565pa@gmail.com',null,null);
insert into employee values (33,'Писарь Л.В.','бухгалтер',null,'063-17-10-758','работает','Писарь',null,null,'1900-01-00',null,null,null);
insert into employee values (34,'Покуса Ю.Г.','дизайнер','ул. Малахова, 81',null,'работает','Покуса',null,null,'1985-06-21','lillianchik@gmail.com',null,null);
insert into employee values (35,'Полторацкий С.И.','дизайнер-художник',null,'068-859-07-71','работает','Полторацкий',null,null,'1984-02-10','yuriyg.pokusa@gmail.com',null,null);
insert into employee values (36,'Скрипкару М.','зав.складом','С. Ковалевской, 59','067-566-05-63','работает','Скрипкару',null,null,'1957-01-14',null,null,null);
insert into employee values (37,'Собакин С.В.','водитель-монтажник','ул. Янтарная, д. 79, корп. 2, кв. 2','096-634-45-65','работает','Собакин',null,null,'1984-08-01','zhevzhik844@gmail.com',null,null);
insert into employee values (38,'Тарасова Н.','маляр','г. Никополь, ул. Первомайская, 26/40','093-655-05-80','работает','Тарасова',null,null,'1994-06-27',null,null,null);
insert into employee values (39,'Телепей С.И.','слесарь','с. Жовтневе, ул. Набережная, 9','095-566-25-02','работает','Телепей',null,null,'1975-04-13',null,null,null);
insert into employee values (40,'Ткаченко С.В.','снабжение','ул. Балтийская, 6а8а/2','097-125-13-29','работает','Ткаченко',null,null,'1971-11-27',null,null,null);
insert into employee values (41,'Филипповых А.','маляр','пр. Петровского, 44а/10','063-560-56-00','работает','Филипповых',null,null,'1987-12-06','S.tkachenko1300@gmail.com',null,null);
insert into employee values (42,'Черниченко О.В.','кузнец','ул. Гр. Сковороды, 11','050-886-09-57','работает','Черниченко',null,null,'1980-10-14',null,null,null);
insert into employee values (43,'Черняк А.В.','маляр','пр. Героев, 45/74','063-10-8888-9','работает','Черняк',null,null,'1965-11-14',null,null,null);
insert into employee values (44,'Шувалюк Ю.','маляр','ул. Параллельная, 2/5','068-659-94-94','работает','Шувалюк',null,null,'1978-01-10',null,null,null);
