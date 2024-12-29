
# MySQL Replication Docker

This repository provides a **Docker-based** setup for creating a **MySQL replication** environment with a source (master) and replica (slave) configuration. 

It simplifies setting up a **MySQL database** with replication, making it easy to test and deploy in a local or cloud-based environment.


# Features
- **✅ Docker-based**: The setup uses `docker-compose.yml` to create a MySQL master-slave replication environment.
- **✅ Environment Variables**: The configuration is done using environment variables, making it easy to customize the setup.
- **✅ Replication**: The master MySQL server is configured to replicate data to the replica MySQL server.
- **✅ Security**: The setup uses a separate user for replication, ensuring that the replication process is secure.
- **✅ Easy Deployment**: The setup can be easily deployed on a local machine or a cloud-based environment.


# Deployment
1. Clone the repository to your master machine and replica machine.
    ```bash
    git clone https://github.com/yeszao/mysql-replication-docker.git
    ```
2. Create `.env` file in the root directory of the repository on both machines.
    ```bash
    cd mysql-replication-docker
    cp docker-compose.yml.example docker-compose.yml
    ```
   Add the values of the environment variables base on your needs.
2. Start the MySQL `master` container on the master machine.
    ```bash
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
- `REPLICATOR_USERNAME`: The username for the replicator user on the replica MySQL server.
- `REPLICATOR_PASSWORD`: The password for the replicator user on the replica MySQL server.

**Replica MySQL Server**
- `SLAVE_ROOT_PASSWORD`: The password for the root user on the replica MySQL server.
- `SLAVE_EXPOSE_PORT`: The port on which the replica MySQL server is exposed to host.
- `MYSQL_MASTER_HOST`: The hostname or IP address of the master MySQL server.
- `MYSQL_MASTER_PORT`: The port on which the master MySQL server is listening.
- `REPLICATOR_USERNAME`: The username for the replicator user on the replica MySQL server.
- `REPLICATOR_PASSWORD`: The password for the replicator user on the replica MySQL server.
