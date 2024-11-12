
# Mysql Replication Docker

This repository provides a Docker-based setup for creating a MySQL replication environment with a source (master) and replica (secondary) configuration. It simplifies setting up a MySQL database with replication, making it easy to test and deploy in a local or cloud-based environment. Ideal for learning MySQL replication, experimenting with data redundancy, and testing failover scenarios.


# Deployment
1. Clone the repository to your master machine and replica machine.
    ```bash
    git clone https://github.com/yeszao/mysql-replication-docker.git
    ```
2. Create `.env` file in the root directory of the repository on both machines.
    ```bash
    cd mysql-replication-docker
    touch .env
    ```
   Change the values of the environment variables base on your needs.
2. Start the MySQL `master` container on the master machine.
    ```bash
    cd mysql-replication-docker
    docker compose up -d master
    ```
3. Start the MySQL `slave` container on the replica machine.
    ```bash
    cd mysql-replication-docker
    docker compose up -d slave
    ```
   

# Environment Variables
The following environment variables are available for configuration in the `.env` file:

**Master MySQL Server**
- `MASTER_ROOT_PASSWORD`: The password for the root user on the master MySQL server.
- `MASTER_EXPOSE_PORT`: The port on which the master MySQL server is exposed to host.
- `MASTER_ROOT_PASSWORD`: The password for the root user on the replica MySQL server.
- `REPLICATOR_USERNAME`: The username for the replicator user on the replica MySQL server.
- `REPLICATOR_PASSWORD`: The password for the replicator user on the replica MySQL server.

**Replica MySQL Server**
- `SLAVE_ROOT_PASSWORD`: The password for the root user on the replica MySQL server.
- `SLAVE_EXPOSE_PORT`: The port on which the replica MySQL server is exposed to host.
- `SLAVE_MASTER_HOST`: The hostname or IP address of the master MySQL server.
- `MYSQL_MASTER_PORT`: The port on which the master MySQL server is listening.
- `REPLICATOR_USERNAME`: The username for the replicator user on the replica MySQL server.
- `REPLICATOR_PASSWORD`: The password for the replicator user on the replica MySQL server.
