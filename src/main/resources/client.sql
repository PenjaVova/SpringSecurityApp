create table clients (

  ID            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FIO           VARCHAR(255) NOT NULL,
  phone         VARCHAR(255),
  INN           VARCHAR(10),
  fiz_ur        VARCHAR(10),
  ACC           VARCHAR(255),
  pasp          VARCHAR(255),
  addr          VARCHAR(255),
  koment        VARCHAR(255)
)
  ENGINE = InnoDB;


INSERT INTO clients VALUES
  (1,
   'Михальченко Константин Николаевич',
   '+380675671087','',
   'ЧП',
   'нет',
   '',
   'г. Днепр, ул. Каневская дом. 17',
   'заказывает на нужды производства');

INSERT INTO clients VALUES (
  2,
  'Пак Светлана-Ирсеновна',
  '+380933757480',
  '',
  'ЮР',
  '№ КАРТЫ ПРИВАТБАНКА',
  '',
  'г. Днепр, ул. Каневская дом. 17',
  'контактное лицо Дамир');