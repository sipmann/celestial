# Celestial [![CI Tests](https://github.com/sipmann/celestial/workflows/Elixir%20CI/badge.svg)](https://github.com/sipmann/celestial/actions)

Boilerplate for Elixir API service.


## Configurations

There are a few runtime configurations available.

* port: Port where the server will be available

## Running

### Database

First you need to create the database using the following command if you want to use one.

`mix ecto.create`

To create migrations you have the following.

`mix ecto.gen.migration create_users`

Then run the migration.

`mix ecto.migrate`

### Server

To start the server, run the following command.

`mix celestial.server`

## Testing

To run the tests, use the mix test command.

`mix test`

The project also have the `[credo](https://github.com/rrrene/credo)` lib to run static code analysis. To use it just run 

`mix credo`


# Based on

Built while learing/reading the saswat blog [post](https://saswat.dev/build-a-simple-rest-api-with-elixir-part-1/).