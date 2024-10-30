# References

## Snowflake

Todennus utilizes Twitter's snowflake format for uniquely identifiable descriptors (IDs).

Because Snowflake IDs are up to 64 bits in size (e.g. a int64), they are always returned as strings in the HTTP API to prevent integer overflows in some languages.

Snowflake ID example: `328184286924505088`.

## Authentication

Authentication is performed with the Authorization HTTP header as the following format:

```
Authorization: Bearer {ACCESS_TOKEN}
```

## @me

`@me` can be used to replace `{user_id}` in all API requests requiring authentication to represent the `{user_id}` of the authorized user.

## Scope

### Todennus (inhouse) scope

Refers [Scopes](./scopes.md) for the scope definitions.

Refers [Swagger Endpoint](./README.md) to know which scope is required to make an API.
