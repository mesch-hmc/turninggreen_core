[![Build Status](https://travis-ci.org/mesch-hmc/turninggreen_core.svg?branch=master)](https://travis-ci.org/mesch-hmc/turninggreen_core)

# Turning Green Core

This repo contains the backend for various Turning Green stuff.

## Initial Setup
For first-time users, do the following
```
1. `bundle update`
2. `rails db:create`
3. `rails db:migrate`
4. `rake task:importjson`
```
## Deployment

Run `bundle update` then `rails s`.

## Debugging
Use `binding.pry` to debug your rails app. `rails routes` will list all your endpoints!

