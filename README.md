# Playground App

This is a guinea pig application. It's purpouse is to serve as a playgroun where it's possible to implement
right solution for client features, play with Rails and show case my works

### Environment

* Ruby version: 3.3.3
* Database version: PostgreSQL 15.2

### Local development setup
Uses Docker to run the db container via docker compose
Create .env file and provide following environment variables:
- DB_SCHEMA
- DB_USER
- DB_PASSWORD

Then run: `$ docker-compose up --env-file .env` 

The database runs on localhost (127.0.0.1) on port 5433

### Deployment instructions
- Create DB schema before first deployment. Not sure if it's possible to do it via migrations (chicken egg problem)
TBD