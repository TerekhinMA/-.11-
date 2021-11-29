use Datchiki_ycheta;
CREATE TABLE `pribor_ycheta` (
`id_pribor_ycheta` INT(11) NOT NULL AUTO_INCREMENT,
`indexirovanie_pribora` VARCHAR(45) NOT NULL ,
`licevoi_schet` VARCHAR(45) NOT NULL,
`vladelec` VARCHAR(45) NOT NULL,
`adres_ystanivki` VARCHAR(99) NOT NULL,
`tip_pribora_ycheta` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_pribor_ycheta`),
INDEX(`id_pribor_ycheta`))
ENGINE = InnoDB;

CREATE TABLE `tip_pribor_ycheta` (
`id_tip_pribor_ycheta` INT(11) NOT NULL AUTO_INCREMENT,
`tip_pribora_ycheta` VARCHAR(45) NOT NULL ,
`edinica_izmerenia` VARCHAR(45) NOT NULL,
PRIMARY KEY ( `id_tip_pribor_ycheta`),
INDEX(`id_tip_pribor_ycheta`))
ENGINE = InnoDB;

CREATE TABLE `opoveshenia` (
`id_opoveshenia` INT(11) NOT NULL AUTO_INCREMENT,
`vladelec` VARCHAR(45) NOT NULL ,
`data_opoveshenia` date,
`vid_opoveshenia` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_opoveshenia`),
INDEX(`id_opoveshenia`))
ENGINE = InnoDB;

CREATE TABLE `pokazania` (
`id_pokazania` INT(11) NOT NULL AUTO_INCREMENT,
`indexirovanie_pribora` VARCHAR(45) NOT NULL ,
`data_pokazania` date,
`znachenie_pokazania` VARCHAR(45) NOT NULL,
PRIMARY KEY (`id_pokazania`),
INDEX(`id_pokazania`))
ENGINE = InnoDB;
