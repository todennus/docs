# Scopes

Note: Authorization Code Flow with PKCE only allows scopes marked as `readonly`.

Note: App Scope is only available in Client Credentials Flow.

Note: Admin Scope is unavailable in Resource Owner Password Flow.

## Standard scope

| Scope            | Description                                             |
| ---------------- | ------------------------------------------------------- |
| `offline_access` | Maintain access to resource even if user is not present |

## User scope

| Scope                          | Description                              | Is Read-only |
| ------------------------------ | ---------------------------------------- | ------------ |
| `todennus/read:user.profile`   | Grant read-only access to user profile   | `true`       |
| `todennus/read:client.profile` | Grant read-only access to client profile | `true`       |
| `todennus/create:client`       | Grant permission to create a client      | `false`      |

## App scope

| Scope                              | Description                               | Is Read-only |
| ---------------------------------- | ----------------------------------------- | ------------ |
| `todennus/app:read:client.owner`   | Grant read-only access to client owner id | `true`       |
| `todennus/app:read:client.profile` | Grant read-only access to client profile  | `true`       |

## Admin scope

| Scope                                | Description                                         | Is Read-only |
| ------------------------------------ | --------------------------------------------------- | ------------ |
| `todennus/admin:read:user.profile`   | Grant admin read-only access to user profile        | `true`       |
| `todennus/admin:validate:user`       | Grant admin permission to validate user credentials | `true`       |
| `todennus/admin:create:user`         | Grant admin permission to create a new user         | `false`      |
| `todennus/admin:read:client.profile` | Grant admin read-only access to client profile      | `true`       |
| `todennus/admin:validate:client`     | Grant admin permission to validate client           | `true`       |
| `todennus/admin:create:client`       | Grant admin permission to create a client           | `false`      |
