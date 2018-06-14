begin;
  create database if not exists `app`;
  create database if not exists `1c-import`;

  create user if not exists 'admin'@'%' identified by 'admin';
  create user if not exists 'moderator'@'%' identified by 'moderator';
  create user if not exists 'manager'@'%' identified by 'manager';
  create user if not exists '1c-worker'@'%' identified by '1c-worker';

  grant select,create,update,drop,alter,insert,delete,create user on *.* to 'admin'@'%' with grant option;
  grant select,create,update,drop,alter,insert,delete on *.* to 'moderator'@'%';
  grant select,create,update,drop,insert,delete on TABLE `1c-import`.* to 'manager'@'%';
  grant select,insert,delete,update on TABLE `1c-import`.* to '1c-worker'@'%';

  flush privileges;
commit;
