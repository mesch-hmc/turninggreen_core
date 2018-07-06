# Turning Green Core

This repo contains the backend for various Turning Green stuff.

## Initial Setup
For first-time users, do the following
```
1. Get Docker
2. `docker-compose build`
3. `docker-compose run web rails db:create`
4. `docker-compose run web rails db:migrate`
5. `docker-compose run web rake db:importjson`
6. `docker-compose up`
```
## Deployment

If you change the `Gemfile`, then you may need to run `docker-compose up --build`.
Sometimes, that's not enough, so you will need `docker-compose run web bundle install` followed by the previous command.

Run `docker-compose up`.

## Debugging
Use `binding.pry` to debug your rails app. If you ever find any issues, you can attach docker to the the running rails app by finding it through `docker ps`. Then, run `docker attach xxxxxxxxx`. This will allow you to use the debugger! P.S. You will need at least two terminals to make these run.

If you run into any whitelisting issues from docker, you can whitelist your ip address by adding
`config.web_console.whitelisted_ips = 'xxx.xx.x.x'` in `config/application.rb`.

`docker-compose run web rake routes` will list all your endpoints!

