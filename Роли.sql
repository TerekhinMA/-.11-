Use Datchiki_ycheta;
CREATE USER 'polzovatel'@'localhost' IDENTIFIED BY 'polzovatel';
GRANT INSERT  ON * . * TO 'polzovatel'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'admin' @'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON * . * TO 'admin'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'sotrudnik'@'localhost' IDENTIFIED BY 'sotrudnik';
GRANT  SELECT, INSERT, UPDATE, DELETE, DROP ON * . * TO 'sotrudnik'@'localhost';
FLUSH PRIVILEGES;
