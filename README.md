# User List API with PostgREST, Nginx, and Docker Compose

This project demonstrates a simple API that returns a list of user records from a PostgreSQL database via PostgREST, with Nginx acting as a reverse proxy.

## Prerequisites

* Docker
* Docker Compose
* Make

## Project Structure

```
my-task-postgrest/
├── db/
│   └── init.sql        # Creates and seeds the users table
├── nginx/
│   ├── Dockerfile      # Builds Nginx reverse proxy
│   └── default.conf    # Routes /users/list to PostgREST
├── .env.example        # Environment variables template
├── docker-compose.yml  # Defines db, postgrest, and nginx services
└── Makefile            # setup and test command
```

## Setup

1. Copy the example environment file:

   ```bash
   cp .env.example .env
   ```

2. Start all services in detached mode:

   ```bash
   make setup
   ```

## API Endpoint

* **GET** `/users/list`

    * Returns a JSON array of all users.
    * Example:

      ```bash
      curl http://localhost/users/list
      ```
