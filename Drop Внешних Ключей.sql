use Datchiki_ycheta;
ALTER TABLE `tip_pribor_ycheta`
  Drop CONSTRAINT `FK1_tip_pribor_ycheta`;
  ALTER TABLE `pribor_ycheta`
  drop CONSTRAINT `FK2_pribor_ycheta` ;
  ALTER TABLE `pribor_ycheta`
  drop CONSTRAINT `FK3_pribor_ycheta` 