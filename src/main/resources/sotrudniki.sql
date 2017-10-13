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

select * from employee
  delete from employee

  insert into employee VALUES (1,'Аввакумова В.','маляр','Новомосковск, ул. Кирова, 6 Б','097-047-45-13','работает','Аввакумова',DEFAULT,DEFAULT,'1972-01-20',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (2,'Алуева Т.Н.','маляр','Синельниково, ул. Бараболкина, 107','097-712-58-40','работает','Алуева',DEFAULT,DEFAULT,'1982-03-13',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (3,'Аркадьев Д.А.','дизайнер-проектант','Титова, 23, кв. 49','097-507-03-39','работает','Аркадьев',DEFAULT,DEFAULT,'1973-06-30','dk300673ada@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (4,'Базиленко А.О.','сборщик','пр. Слобожанский, 103/63','050-655-55-68','работает','Базиленко',DEFAULT,DEFAULT,'1978-07-27',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (5,'Безручко А.','кузнец','Тополь-3, дом 49, кв. 29',DEFAULT,'уволен','Безручко',DEFAULT,DEFAULT,'1959-06-23',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (6,'Белошевский В.М.','сварщик','Харитонова, 34, кв. 65','067-512-96-78','уволен','Белошевский',DEFAULT,DEFAULT,'1969-03-01',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (7,'Беляков А.А.','сборщик','Токмак, ул. Пролетарская, 13/37','096-011-03-77','уволен','Беляков',DEFAULT,DEFAULT,'1981-12-29',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (8,'Бобошко С.Ю.','плазма','пер. Цветочный, 27','096-938-95-28','уволен','Бобошко',DEFAULT,DEFAULT,'1982-03-12',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (9,'Вахрушев С.Ю.','студент-слесарь','с. Хуторо-Чаплине, вул. Партизанська, 112','067-69-98-389','работает','Вахрушев',DEFAULT,DEFAULT,'1999-09-09',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (10,'Гайворонский Н.Н.','кузнец',DEFAULT,'095-903-93-11','уволен','Гайворонский',DEFAULT,DEFAULT,'1978-08-26',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (11,'Гаращенко Т.С.','маляр','ул. Ген. Захарченка, 6/55','098-73-86-875','работает','Гаращенко',DEFAULT,DEFAULT,'1996-08-19',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (12,'Грабенко А.А.','маляр','пр. Слобожанский, 70/73','067-598-73-34','уволен','Грабенко',DEFAULT,DEFAULT,'1984-03-19',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (13,'Грушевский К.А.','слесарь','ул. Семафорная, д. 34, корп. Д, кв. 17','067-315-01-68','работает','Грушевский',DEFAULT,DEFAULT,'1979-04-11',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (14,'Гунько Ярослав Алекс.','монтажник','ул. Баглия, 4','095-780-78-61','работает','Гунько',DEFAULT,DEFAULT,'1998-05-25',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (15,'Гурин В.Г.','нач.цеха','ул. Титова, 27/35','096-723-52-76','работает','Гурин',DEFAULT,DEFAULT,'1962-03-29','dk290362gvg@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (16,'Джафаров С.','студент-слесарь','пер. Новозаводской, 3','063-459-222-0','работает','Джафаров',DEFAULT,DEFAULT,'1999-08-13',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (17,'Дяков Игорь ','плазма, оператор ',DEFAULT,'068-874-11-93',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (18,'Завалий Николай Николаевич','нач. участка малярки',DEFAULT,'068-411-59-76','работает','Завалий',DEFAULT,DEFAULT,DEFAULT,DEFAULT,'095-692-56-13',DEFAULT);
insert into employee VALUES (19,'Захарков С.С.','слесарь','ул. Молодогвардейская, 81В/3','066-369-55-72','работает','Захарков',DEFAULT,DEFAULT,'1959-04-03',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (20,'Карулик В.Е.','водитель-монтажник','пгт. Губиниха, ул. Заводская, 20','073-036-36-79','работает','Карулик',DEFAULT,DEFAULT,'1970-03-27',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (21,'Ким Е.А.',DEFAULT,DEFAULT,'067-265-19-16','работает','Ким',DEFAULT,DEFAULT,'1982-12-10','dd101282kea@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (22,'Кобзаренко А.Л.','маляр',DEFAULT,'099-944-06-69','уволен','Кобзаренко',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (23,'Ковинчук В.И.','кузнец','ул. Усенко, 5/77','067-89-27-278','работает','Ковинчук',DEFAULT,DEFAULT,'1961-01-07',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (24,'Ковтун А.В.','резчик','г. Синельниково, ул. Московская, 46/2','063-202-53-02','работает','Ковтун',DEFAULT,DEFAULT,'1986-09-26',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (25,'Коробка А.',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (26,'Коробченко В.В.','кузнец',DEFAULT,'067-921-74-99','работает','Коробченко',DEFAULT,DEFAULT,'1970-02-08',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (27,'Красников Е.Д.','маляр','с. Терновка, ул. Шахтерская, 5/7','066-000-31-80','уволен','Красников',DEFAULT,DEFAULT,'1983-05-18',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (28,'Красников И.В.','маляр','ул. Матросова, 44/1А','063-527-12-63','уволен','Красников',DEFAULT,DEFAULT,'1982-01-20',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (29,'Кужильский Е.О.','монтажник, слесарь','пров. Червонопролетарський, 32','093-99-86-706','работает','Кужильский',DEFAULT,DEFAULT,'1998-05-09',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (30,'Курило С.Н.','сварщик','Донецк, ул. Китченко, 18','099-759-89-56','уволен','Курило',DEFAULT,DEFAULT,'1988-03-05',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (31,'Кучеренко И.В.','механик',DEFAULT,'096-21-94-753','уволен','Кучеренко',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (32,'Кучма Д.Ю.','водитель-монтажник','ул. Амурская, 166','093-277-72-54','работает','Кучма',DEFAULT,DEFAULT,'1997-04-19',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (33,'Лаврушин Н.А.','сварщик-сборщик',DEFAULT,'067-646-27-85','работает','Лаврушин',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (34,'Левченко Л.Л.','сборщик',DEFAULT,'063-125-59-92','работает','Левченко',DEFAULT,DEFAULT,'1971-01-21',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (35,'Луцак А.В.','зам.директора',DEFAULT,'(067) 782-49-02','работает','Луцак',DEFAULT,DEFAULT,'1965-03-14','pikuzzza65@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (36,'Лысяк В.В.','дизайнер-проектант','ж/м Топль-3, д. 57, кв. 50','097-905-79-41','работает','Лысяк',DEFAULT,DEFAULT,'1976-08-06','lysyak.vv@gmail.com','vovanlysyak@gmail.com',DEFAULT);
insert into employee VALUES (37,'Масалыкин В.Н.','кузнец','ул. Спартака, 36','066-94-39-146','работает','Масалыкин',DEFAULT,DEFAULT,'1976-02-26',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (38,'Михайловский В.В.','плазменщик','ул. Ногинская, 34/7','066-926-69-28','работает','Михайловский',DEFAULT,DEFAULT,'1985-03-19',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (39,'Мишков О.А.','студент-слесарь','смт. Иларионово, ул. Красина, 14/15',DEFAULT,'уволен','Мишков',DEFAULT,DEFAULT,'1999-04-17',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (40,'Музыка В.З.','дизайнер-проектант','ул. Коммунаровская, 1/336','097-940-82-29','работает','Музыка',DEFAULT,DEFAULT,'1966-02-20','vladimir.myzuka2@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (41,'Мысик Э.В.','маляр','ул. Героев Сталинграда, 8а/37','097-438-86-81','уволен','Мысик',DEFAULT,DEFAULT,'1983-05-16',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (42,'Накрапас А.В.','студент-слесарь','с. Миколаївка, вул. Шевченко, 1','095-53-17-420','работает','Накрапас',DEFAULT,DEFAULT,'2000-10-01',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (43,'Носуля С.А.','дизайнер-художник','ул. Мандрыковская, 167/142','096-378-05-52','работает','Носуля',DEFAULT,DEFAULT,'1965-03-17','svetlana.artkovka@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (44,'Олексюк С.В.','механик','ул. Мониторная, 1/39','050-759-6666','работает','Олексюк',DEFAULT,DEFAULT,'1964-07-23',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (45,'Осадченко С.А.','плазма',DEFAULT,DEFAULT,'работает','Осадченко',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (46,'Папушников А.','дизайнер-проектант','Наб.Победы, 44Д','067-758-40-62','работает','Папушников',DEFAULT,DEFAULT,'1965-05-21','dk210565pa@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (47,'Передерий Р. А.','монтажник',DEFAULT,'063-17-10-758','работает','Передерий',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (48,'Писарь Л.В.','бухгалтер',DEFAULT,DEFAULT,'работает','Писарь',DEFAULT,DEFAULT,'1985-06-21','lillianchik@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (49,'Покуса Ю.Г.','дизайнер','ул. Малахова, 81','068-859-07-71','работает','Покуса',DEFAULT,DEFAULT,'1984-02-10','yuriyg.pokusa@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (50,'Полторацкий С.И.','дизайнер-художник',DEFAULT,'067-566-05-63','работает','Полторацкий',DEFAULT,DEFAULT,'1957-01-14',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (51,'Помазан',DEFAULT,DEFAULT,DEFAULT,'уволен','Помазан',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (52,'Сасов Д.В.','студент-слесарь',DEFAULT,'066-328-39-93','уволен','Сасов',DEFAULT,DEFAULT,'2000-06-06',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (53,'Сизонтенко Алексей Михайлович','сварщик-сборщик (монтажник)',DEFAULT,'095-545-07-98','уволен','Сизонтенко',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (54,'Скочиковский В.Н.','слесарь',DEFAULT,'067-339-72-86','уволен','Скочиковский',DEFAULT,DEFAULT,'1965-04-03',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (55,'Скрипкару М.','зав.складом','С. Ковалевской, 59','096-634-45-65','работает','Скрипкару',DEFAULT,DEFAULT,'1984-08-01','zhevzhik844@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (56,'Слободюк К.Н.','вебразработчик',DEFAULT,'(068) 410-45-99','уволен','Слободюк',DEFAULT,DEFAULT,DEFAULT,'kslobodiuk@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (57,'Собакин С.В.','водитель-монтажник','ул. Янтарная, д. 79, корп. 2, кв. 2','093-655-05-80','работает','Собакин',DEFAULT,DEFAULT,'1994-06-27',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (58,'Тарасова Н.','маляр','г. Никополь, ул. Первомайская, 26/40','095-566-25-02','работает','Тарасова',DEFAULT,DEFAULT,'1975-04-13',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (59,'Телепей С.И.','слесарь','с. Жовтневе, ул. Набережная, 9','097-125-13-29','работает','Телепей',DEFAULT,DEFAULT,'1971-11-27',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (60,'Ткаченко С.В.','снабжение','ул. Балтийская, 6а8а/2','063-560-56-00','работает','Ткаченко',DEFAULT,DEFAULT,'1987-12-06','S.tkachenko1300@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (61,'Толстов Дмитрий Анатольевич','сварщик-сборщик',DEFAULT,'073-203-56-36','уволен','Толстов',DEFAULT,DEFAULT,'1974-11-22',DEFAULT,'жена 096-722-91-37',DEFAULT);
insert into employee VALUES (62,'Филипповых А.','маляр','пр. Петровского, 44а/10','050-886-09-57','работает','Филипповых',DEFAULT,DEFAULT,'1980-10-14',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (63,'Харченко Н.В.','зав.складом','ул. Ленина, 29А/25','067-799-73-36','уволен','Харченко',DEFAULT,DEFAULT,'1968-07-23','dk230768hnv@gmail.com',DEFAULT,DEFAULT);
insert into employee VALUES (64,'Хоменко Р.',DEFAULT,DEFAULT,DEFAULT,'работает',DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (65,'Черниченко О.В.','кузнец','ул. Гр. Сковороды, 11','063-10-8888-9','работает','Черниченко',DEFAULT,DEFAULT,'1965-11-14',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (66,'Черняк А.В.','маляр','пр. Героев, 45/74','068-659-94-94','работает','Черняк',DEFAULT,DEFAULT,'1978-01-10',DEFAULT,DEFAULT,DEFAULT);
insert into employee VALUES (67,'Шувалюк Ю.','маляр','ул. Параллельная, 2/5','068-857-57-53','работает','Шувалюк',DEFAULT,DEFAULT,'1983-04-28',DEFAULT,DEFAULT,DEFAULT);
