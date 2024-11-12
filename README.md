
# Mysql Replication Docker

This repository provides a Docker-based setup for creating a MySQL replication environment with a source (master) and replica (secondary) configuration. It simplifies setting up a MySQL database with replication, making it easy to test and deploy in a local or cloud-based environment. Ideal for learning MySQL replication, experimenting with data redundancy, and testing failover scenarios.


# Deployment
1. Clone the repository to your master machine and replica machine.
    ```bash
    git clone https://github.com/yeszao/mysql-replication-docker.git
    ```
2. Start the MySQL `source` container on the master machine.
    ```bash
    cd mysql-replication-docker
    docker compose up -d source
    ```
3. Start the MySQL `replica` container on the replica machine.
    ```bash
    cd mysql-replication-docker
    docker compose up -d replica
    ```