CREATE DATABASE `demo` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8mb4_general_ci;

use demo;

create table if not exists `info`
(
    `id`          bigint primary key auto_increment comment 'auto increment id',
    `info`        varchar(255) comment 'information',
    `create_time` timestamp comment 'create time'
) engine = InnoDB
  default charset = UTF8MB4 comment 'demo table';