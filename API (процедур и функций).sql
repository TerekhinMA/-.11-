use `Datchiki_ycheta`;

DELIMITER //

CREATE PROCEDURE addTipov(_tip_pribor_ycheta varchar(45), _edinica_izmerenia VARCHAR(45))
BEGIN
	INSERT INTO tip_pribor_ycheta 
	(`tip_pribor_ycheta`, `edinica_izmerenia`) 
	VALUE 
	(_tip_pribor_ycheta, _edinica_izmerenia);
END//


CREATE PROCEDURE addPribor(_indexirovanie_pribora varchar(45), _licevoi_schet VARCHAR(45), _vladelec VARCHAR(45), _adres_ystanivki VARCHAR(99), _tip_pribora_ycheta VARCHAR(45))
BEGIN
	INSERT INTO pribor_ycheta 
	(`indexirovanie_pribora`, `licevoi_schet`, `vladelec`, `adres_ystanivki`, `tip_pribora_ycheta`) 
	VALUE 
	(_indexirovanie_pribora, _licevoi_schet, _vladelec, _adres_ystanivki, _tip_pribora_ycheta);
END//


CREATE PROCEDURE addOpoveshenia(_vladelec varchar(45), _data_opoveshenia date, _vid_opoveshenia VARCHAR(45))
BEGIN
	INSERT INTO opoveshenia 
	(`vladelec`, `data_opoveshenia`, `vid_opoveshenia`) 
	VALUE 
	(_vladelec, _data_opoveshenia, _vid_opoveshenia);
END//


CREATE PROCEDURE addPokazania(_indexirovanie_pribora varchar(45), _data_pokazania date, _znachenie_pokazania VARCHAR(45))
BEGIN
	INSERT INTO pokazania 
	(`indexirovanie_pribora`, `data_pokazania`, `znachenie_pokazania`) 
	VALUE 
	(_indexirovanie_pribora, _data_pokazania, _znachenie_pokazania);
END//



CREATE PROCEDURE changeTipovPribor(_id_tip_pribor_ycheta int(11), newtip_pribor_ycheta VARCHAR(45))
BEGIN
	UPDATE `tip_pribor_ycheta` SET `tip_pribor_ycheta`=newtip_pribor_ycheta WHERE `id_tip_pribor_ycheta`=_id_tip_pribor_ycheta;
END//


CREATE PROCEDURE changeTipovIzmerenia(_id_tip_pribor_ycheta int(11), newedinica_izmerenia VARCHAR(45))
BEGIN
	UPDATE `tip_pribor_ycheta` SET `edinica_izmerenia`=newedinica_izmerenia WHERE `id_tip_pribor_ycheta`=_id_tip_pribor_ycheta;
END//



CREATE PROCEDURE changePriborVladelec(_id_pribor_ycheta int(11), newvladelec varchar(45))
BEGIN
	UPDATE `pribor_ycheta` SET `vladelec`=newvladelec WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//


CREATE PROCEDURE changePriborTipov(_id_tip_pribor_ycheta int(11), newtip_pribora_ycheta VARCHAR(45))
BEGIN
	UPDATE `pribor_ycheta` SET `tip_pribora_ycheta`=newtip_pribora_ycheta WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//


CREATE PROCEDURE changePriborIndexirovanie(_id_pribor_ycheta int(11), newindexirovanie_pribora varchar(45))
BEGIN
	UPDATE `pribor_ycheta` SET `indexirovanie_pribora`=newindexirovanie_pribora WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//


CREATE PROCEDURE changePriborLicSchet(_id_pribor_ycheta int(11), newlicevoi_schet varchar(45))
BEGIN
	UPDATE `pribor_ycheta` SET `licevoi_schet`=newlicevoi_schet WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//




CREATE PROCEDURE changeOpovesheniaVladelec(_id_opoveshenia int(11), newvladelec varchar(45))
BEGIN
	UPDATE `opoveshenia` SET `vladelec`=newvladelec WHERE `id_opoveshenia`=_id_opoveshenia;
END//


CREATE PROCEDURE changeOpovesheniaData(_id_opoveshenia int(11), newdata_opoveshenia date)
BEGIN
	UPDATE `opoveshenia` SET `data_opoveshenia`=newdata_opoveshenia WHERE `id_opoveshenia`=_id_opoveshenia;
END//


CREATE PROCEDURE changeOpovesheniaVid(_id_opoveshenia int(11), newvid_opoveshenia varchar(45))
BEGIN
	UPDATE `opoveshenia` SET `vid_opoveshenia`=newvid_opoveshenia WHERE `id_opoveshenia`=_id_opoveshenia;
END//



CREATE PROCEDURE changePokazaniaIndexirovanie(_id_pokazania int(11), newindexirovanie_pribora varchar(45))
BEGIN
	UPDATE `pokazania` SET `indexirovanie_pribora`=newindexirovanie_pribora WHERE `id_pokazania`=_id_opoveshenia;
END//


CREATE PROCEDURE changePokazaniaDate(_id_pokazania int(11), newdata_pokazania date)
BEGIN
	UPDATE `pokazania` SET `data_pokazania`=newdata_pokazania WHERE `id_pokazania`=_id_opoveshenia;
END//


CREATE PROCEDURE changePokazaniaZnachenie(_id_pokazania int(11), newznachenie_pokazania varchar(45))
BEGIN
	UPDATE `pokazania` SET `znachenie_pokazania`=newindexirovanie_pribora WHERE `id_pokazania`=_id_opoveshenia;
END//



CREATE PROCEDURE removeIDTip(_id_tip_pribor_ycheta int(11))
BEGIN
	DELETE FROM `tip_pribor_ycheta` WHERE `id_tip_pribor_ycheta`=_id_tip_pribor_ycheta;
END//


CREATE PROCEDURE removeTipPribora(_tip_pribora_ycheta VARCHAR(45))
BEGIN
	DELETE FROM `tip_pribor_ycheta` WHERE `tip_pribora_ycheta`=_tip_pribora_ycheta;
END//


CREATE PROCEDURE removeTipIzmerenia(_edinica_izmerenia VARCHAR(45))
BEGIN
	DELETE FROM `tip_pribor_ycheta` WHERE `edinica_izmerenia`=_edinica_izmerenia;
END//



CREATE PROCEDURE removeIDPribora(_id_pribor_ycheta int(11))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//


CREATE PROCEDURE removePriboraIndexa(_indexirovanie_pribora VARCHAR(45))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `indexirovanie_pribora`=_indexirovanie_pribora;
END//


CREATE PROCEDURE removePriboraLicevoSchet(_licevoi_schet VARCHAR(45))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `licevoi_schet`=_licevoi_schet;
END//


CREATE PROCEDURE removePriboraVladelec(_vladelec VARCHAR(45))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `vladelec`=_vladelec;
END//


CREATE PROCEDURE removePriboraAdres(_adres_ystanivki VARCHAR(45))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `adres_ystanivki`=_adres_ystanivki;
END//


CREATE PROCEDURE removePriboraTip(_tip_pribora_ycheta VARCHAR(45))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `tip_pribora_ycheta`=_tip_pribora_ycheta;
END//




CREATE PROCEDURE removeOpovesheniaID(_id_opoveshenia INT(11))
BEGIN
	DELETE FROM `opoveshenia` WHERE `id_opoveshenia`=_id_opoveshenia;
END//


CREATE PROCEDURE removeOpovesheniaVladelec(_vladelec VARCHAR(45))
BEGIN
	DELETE FROM `opoveshenia` WHERE `vladelec`=_vladelec;
END//


CREATE PROCEDURE removeOpovesheniaDate(_data_opoveshenia Date)
BEGIN
	DELETE FROM `opoveshenia` WHERE `data_opoveshenia`=_data_opoveshenia;
END//


CREATE PROCEDURE removeOpovesheniaVid(_vid_opoveshenia Varchar(45))
BEGIN
	DELETE FROM `opoveshenia` WHERE `vid_opoveshenia`=_vid_opoveshenia;
END//




CREATE PROCEDURE removePokazaniaID(_id_pokazania Int(11))
BEGIN
	DELETE FROM `pokazania` WHERE `id_pokazania`=_id_pokazania;
END//


CREATE PROCEDURE removePokazaniaIndex(_indexirovanie_pribora VARCHAR(45))
BEGIN
	DELETE FROM `pokazania` WHERE `indexirovanie_pribora`=_indexirovanie_pribora;
END//


CREATE PROCEDURE removePokazaniaData(_data_pokazania Date)
BEGIN
	DELETE FROM `pokazania` WHERE `data_pokazania`=_data_pokazania;
END//


CREATE PROCEDURE removePokazaniaZnachenie(_znachenie_pokazania VARCHAR(45))
BEGIN
	DELETE FROM `pokazania` WHERE `znachenie_pokazania`=_znachenie_pokazania;
END//



CREATE PROCEDURE removeTipPribora(_id_tip_pribor_ycheta int(11))
BEGIN
	DELETE FROM `tip_pribor_ycheta` WHERE `id_tip_pribor_ycheta`=_id_tip_pribor_ycheta;
END//


CREATE PROCEDURE removePriborYcheta(_id_pribor_ycheta int(11))
BEGIN
	DELETE FROM `pribor_ycheta` WHERE `id_pribor_ycheta`=_id_pribor_ycheta;
END//


CREATE PROCEDURE removeOpoveshenia(_id_opoveshenia int(11))
BEGIN
	DELETE FROM `opoveshenia` WHERE `id_opoveshenia`=_id_opoveshenia;
END//


CREATE PROCEDURE removePokazania(_id_pokazania int(11))
BEGIN
	DELETE FROM `pokazania` WHERE `id_pokazania`=_id_pokazania;
END//
//
DELIMITER ;