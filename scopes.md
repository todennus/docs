# Scopes

Note: Authorization Code Flow with PKCE only allows scopes marked as `readonly`.

Note: App Scope is only available in Client Credentials Flow.

Note: Admin Scope is unavailable in Resource Owner Password Flow.

## Standard scope

| Scope            | Description                                                     |
| ---------------- | --------------------------------------------------------------- |
| `offline_access` | Maintain access to the resource even if the user is not present |

## User scope

| Scope                          | Description                                    | Is Read-only |
| ------------------------------ | ---------------------------------------------- | ------------ |
| `todennus/read:user.profile`   | Grant read-only access to the user's profile   | `true`       |
| `todennus/read:user.avatar`    | Grant read-only access to the user's avatar    | `true`       |
| `todennus/update:user.avatar`  | Grant permission to update the user's avatar   | `false`      |
| `todennus/read:client.profile` | Grant read-only access to the client's profile | `true`       |
| `todennus/create:client`       | Grant permission to create new clients         | `false`      |

## App scope

| Scope                              | Description                                     | Is Read-only |
| ---------------------------------- | ----------------------------------------------- | ------------ |
| `todennus/app:read:client.owner`   | Grant read-only access to the client's owner id | `true`       |
| `todennus/app:read:client.profile` | Grant read-only access to the client's profile  | `true`       |

## Admin scope

| Scope                                   | Description                                                 | Is Read-only |
| --------------------------------------- | ----------------------------------------------------------- | ------------ |
| `todennus/admin:read:user.profile`      | Grant read-only access to all users' profiles               | `true`       |
| `todennus/admin:validate:user`          | Grant permission to validate all users' credentials         | `false`      |
| `todennus/admin:create:user`            | Grant permission to create new users                        | `false`      |
| `todennus/admin:read:client.profile`    | Grant read-only access to all client profiles               | `true`       |
| `todennus/admin:validate:client`        | Grant permission to validate the client's credentials       | `false`      |
| `todennus/admin:create:client`          | Grant permission to create new clients                      | `false`      |
| `todennus/admin:validate:file.policy`   | Grant permission to read the file policy from policy source | `false`      |
| `todennus/admin:command:file.temporary` | Grant permission to give a command to a temporary file      | `false`      |
