CHANGE MASTER TO
  MASTER_HOST='source',
  MASTER_USER='replicator',
  MASTER_PASSWORD='replicator_password',
  MASTER_LOG_FILE='mysql-bin.000001',
  MASTER_LOG_POS=0;

START SLAVE;