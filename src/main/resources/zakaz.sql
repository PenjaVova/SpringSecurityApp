-- Table: zakaz
-- ********************************************************
CREATE TABLE zakaz (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  clients_id     INT, -- hidden
  clients_FIO    VARCHAR(255) NOT NULL,
  -- positionName   VARCHAR(255), -- нужно ли это поле
  dateStartZ     DATETIME,
  dateChangeZ    DATETIME,
  zakazState     VARCHAR(255),  -- по этому полю фильтровать многие статусы: в работе/закрыт и т.д.
  users_id       INT, -- hidden
  users_username VARCHAR(255),
  price          NUMERIC(16,2),
  cost           NUMERIC(16,2),
  coment         VARCHAR(255),
  sotrFio        varchar(255) DEFAULT NULL, -- по этому полю можно фильтровать заказы сотрудника для дизайнера - только мои, для босса - выбор логинов

  FOREIGN KEY (clients_id) REFERENCES clients (id),
  FOREIGN KEY (users_id) REFERENCES users (id)
)
  ENGINE = InnoDB;
-- ********************************************************
-- Table: position
-- ********************************************************
CREATE TABLE zakaz_position (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zakaz_id       INT          NOT NULL,
  positionName   VARCHAR(255) NOT NULL,
  dateStartPos   DATETIME,
  dateChangePos  DATETIME,
  users_id       INT, -- hidden
  users_username VARCHAR(255),
  price          NUMERIC(16,2),
  costMaterial   NUMERIC(16,2), -- себестоимость основных материалов
  costNoMaterial NUMERIC(16,2), -- доп. расходы: АПК + расходники + постоянные издержки
  coment         VARCHAR(255),

  FOREIGN KEY (zakaz_id) REFERENCES zakaz (id),
  FOREIGN KEY (users_id) REFERENCES users (id)
)
  ENGINE = InnoDB;

-- ********************************************************
-- Table: pre_calc
-- ********************************************************

CREATE TABLE zakaz_pre_calc (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zakaz_id       INT          NOT NULL,
  position_id    INT          NOT NULL,
  positionName   VARCHAR(255) NOT NULL,
  users_id       INT,
  users_username VARCHAR(255),
  pre_calcState  VARCHAR(255),
  dateStartCalc  DATETIME,
  dateChangeCalc DATETIME,
  nom_elem       VARCHAR(255),   -- табл "nomenclatura" поле "nom_elem"
  edinIzmer      VARCHAR(255),   -- выпадающий список кг / м / шт ...
  materialCount  NUMERIC(16,2),  -- кол-во материала
  materialCost   NUMERIC(16,2),  -- себестоимость мариала /*todo когда буду делать склад то при оприходывании на заказ нужно сюда проставлять суммму закупки*/
  isCostReal     VARCHAR(1),     -- цена средняя = "N" если реальная цена - проставлять "Y" при оприходывании
  coment         VARCHAR(255),


  FOREIGN KEY (zakaz_id)    REFERENCES zakaz          (id),
  FOREIGN KEY (position_id) REFERENCES zakaz_position (id),
  FOREIGN KEY (users_id)    REFERENCES users          (id)
)
  ENGINE = InnoDB;
-- ********************************************************
-- история изменения состояний заказа
-- ********************************************************
CREATE TABLE zakaz_state_history (
  id             INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zakaz_id       INT NOT NULL,
  users_id       INT NOT NULL,
  dateChangeZ    DATETIME NOT NULL,
  zakazState     VARCHAR(255)  NOT NULL,

  FOREIGN KEY (zakaz_id) REFERENCES zakaz (id)
)
  ENGINE = InnoDB;

-- ********************************************************
-- история изменения состояний калькуляции
-- ********************************************************
CREATE TABLE zakaz_pre_calc_state_history (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  pre_calc_id    INT          NOT NULL,
  users_id       INT          NOT NULL,
  dateChangeCalc DATETIME     NOT NULL,
  pre_calcState  VARCHAR(255) NOT NULL,
  coment         VARCHAR(255),

  FOREIGN KEY (pre_calc_id) REFERENCES zakaz_pre_calc (id)
)
  ENGINE = InnoDB;


INSERT INTO zakaz VALUES (1,1,"Михальченко Константин Николаевич","2017-06-27 23:45:45","2017-06-27 23:46:00","НОВЫЙ",1,"proselyte",NULL,NULL,"коментарий");
INSERT INTO zakaz_position VALUES (1,1,"МАНГАЛ","2017-06-27 23:45:45","2017-06-27 23:46:00",1,"PROSELYTE",NULL ,NULL ,NULL , "ТЕСТОВАЯ ПОЗИЦИЯ ЗАКАЗА");
INSERT INTO zakaz_pre_calc VALUES (1,1,1,"МАНГАЛ",1,"proselyte","новый",now(),now(),"Лист 4 мм 1500х3000 00293","м2",0.05,null,"N",DEFAULT );
INSERT INTO zakaz_pre_calc VALUES (2,1,1,"МАНГАЛ",1,"proselyte","новый",now(),now(),"Уголок 25х25 00768","м",6,null,"N",DEFAULT );
