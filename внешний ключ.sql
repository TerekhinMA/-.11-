use Datchiki_ycheta;
ALTER TABLE `pribor_ycheta`
  ADD CONSTRAINT `FK1_tip_pribor_ycheta`
  FOREIGN KEY (`id_pribor_ycheta`) REFERENCES `tip_pribor_ycheta` (`id_tip_pribor_ycheta`) 
  ON DELETE CASCADE ON UPDATE CASCADE;
  
  ALTER TABLE `pokazania`
  ADD CONSTRAINT `FK2_pokazania` 
  FOREIGN KEY (`id_pokazania`) REFERENCES `pribor_ycheta` (`id_pribor_ycheta`) 
  ON DELETE CASCADE ON UPDATE CASCADE;
  
  
  ALTER TABLE `opoveshenia`
  ADD CONSTRAINT `FK3_opoveshenia` 
  FOREIGN KEY (`id_opoveshenia`) REFERENCES `pokazania` (`id_pokazania`) 
  ON DELETE CASCADE ON UPDATE CASCADE;