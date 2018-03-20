# Acebook-legacy

Greetings. Please investigate how this teeny Sinatra app works.

## Production

https://acebook-legacy.herokuapp.com/api/users

Use `curl` to request data from this endpoint

## Set up instructions

Clone this repo and `cd` into it.

```bash
> bundle install

> bundle exec rake db:create
> bundle exec rake db:migrate
> bundle exec rake db:seed

> rackup # go to localhost:9292/api/users in your browser or `curl localhost:9292/api/users`

```

## Tests

```bash
> bundle exec rspec
```
