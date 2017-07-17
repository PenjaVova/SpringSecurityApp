-- Table: zakaz
-- ********************************************************
-- drop TABLE zakaz
CREATE TABLE zakaz (
  id             INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  clients_id     INT, -- hidden
  clients_FIO    VARCHAR(255) NOT NULL,
  dateStartZ     DATETIME,
  dateChangeZ    DATETIME,
  dateGotovZ     DATETIME,
  dateCloseZ     DATETIME,
  zakazState     VARCHAR(255),  -- по этому полю фильтровать многие статусы: в работе/закрыт и т.д.
  price          NUMERIC(16,2),
  rpeCost        NUMERIC(16,2),
  postCost       NUMERIC(16,2),
  sotrFio        varchar(255) DEFAULT NULL, -- по этому полю можно фильтровать заказы сотрудника для дизайнера - только мои, для босса - выбор логинов
  coment         VARCHAR(1000)
)
  ENGINE = InnoDB;
-- ********************************************************
-- Table: position -- drop table zakaz_position
-- ********************************************************
CREATE TABLE zakaz_position (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  zakaz_id       INT          NOT NULL,
  positionName   VARCHAR(255) NOT NULL,
  vid_izdeliya   VARCHAR(255) ,
  edinIzmer      VARCHAR(255) ,
  materialCount  NUMERIC(16,2),
  dateStartPos   DATETIME,
  dateChangePos  DATETIME,
  dateGotovPos   DATETIME,
  users_id       INT, -- hidden
  users_username VARCHAR(255),
  positionState  VARCHAR(255),
  price          NUMERIC(16,2),
  costMaterial   NUMERIC(16,2), -- себестоимость основных материалов
  costNoMaterial NUMERIC(16,2), -- доп. расходы: јѕ  + расходники + посто¤нные издержки
  coment         VARCHAR(255),

  FOREIGN KEY (zakaz_id) REFERENCES zakaz (id)
)
  ENGINE = InnoDB;
-- ********************************************************
-- Table: zakaz_pre_calc  --Калькуляция
-- ********************************************************
CREATE TABLE zakaz_pre_calc (
  id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  position_id    INT          NOT NULL,
  users_username VARCHAR(255),
  pre_calcState  VARCHAR(255),
  dateStartCalc  DATETIME,
  dateChangeCalc DATETIME,
  date_ok        DATETIME,
  materialCost   NUMERIC(16,2),  -- себестоимость мариала /*todo когда буду делать склад то при оприходывании на заказ нужно сюда проставл¤ть суммму закупки*/
  isCostReal     VARCHAR(1),     -- цена средн¤¤ = "N" если реальна¤ цена - проставл¤ть "Y" при оприходывании
  coment         VARCHAR(255),
  FOREIGN KEY (position_id) REFERENCES zakaz_position (id)
)
  ENGINE = InnoDB;

-- ********************************************************
-- Table: zakaz_materials  --элемент калькуляции
-- ********************************************************
CREATE TABLE zakaz_materials (
  id             	INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nom_elem       	VARCHAR(255),   -- табл "nomenclatura" поле "nom_elem"
  edinIzmer      	VARCHAR(255),   -- выпадающий список кг / м / шт ...
  materialCount  	NUMERIC(16,2),  -- кол-во материала
  materialCost   	NUMERIC(16,2),  -- себестоимость мариала /*todo когда буду делать склад то при оприходывании на заказ нужно сюда проставл¤ть суммму закупки*/
  zakaz_pre_calc_id INT,

FOREIGN KEY (zakaz_pre_calc_id) REFERENCES zakaz_pre_calc (id)
)
ENGINE = InnoDB;





