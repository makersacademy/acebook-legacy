# Acebook-legacy

Greetings. Please investigate how this teeny Sinatra app works.

## Production

https://acebook-legacy.herokuapp.com/api/users

Use `curl` to request data from this endpoint

## Set up instructions

Install [Docker](https://docs.docker.com/docker-for-mac/install/) if you haven't.

Clone this repo and `cd` into it.

```bash
> docker-compose run web bundle install

> docker-compose run web rake db:create # create databases
> docker-compose run web rake db:migrate # create tables
> docker-compose run web rake db:seed # insert seed records

> docker-compose up --build # go to localhost:3000/api/users in your browser or `curl localhost:3000/api/users`

> docker-compose ls # to show current containers
> docker-compose down # to stop the container
```

## Tests

```bash
> docker-compose run web rake db:migrate RACK_ENV=test # ensure your test database is set up
> docker-compose run web rspec
```

## Deployment

Find heroku `dev` auth details in `LastPass`

```bash
> heroku container:login
> heroku container:push web
```
