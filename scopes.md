# Scopes

Note: Authorization Code Flow with PKCE only allows scopes marked as `readonly`.

Note: App Scope is only available in Client Credentials Flow.

Note: Admin Scope is unavailable in Resource Owner Password Flow.

## Standard scope

| Scope | Description |
|-------|-------------|
| `offline_access` | Maintain access to the resource even if the user is not present |

## User scope

| Scope | Description | Is Read-only|
|-------|-------------|-------------|
|`todennus/read:user.profile`|Grant read-only access to the user's profile|`true`|
|`todennus/read:user.avatar`|Grant read-only access to the user's avatar|`true`|
|`todennus/update:user.avatar`|Grant permission to update the user's avatar|`false`|
|`todennus/read:client.profile`|Grant read-only access to the client's profile|`true`|
|`todennus/create:client`|Grant permission to create new clients|`false`|

## App scope

| Scope | Description | Is Read-only|
|-------|-------------|-------------|
|`todennus/app:read:client.owner`|Grant read-only access to the client's owner id|`true`|
|`todennus/app:read:client.profile`|Grant read-only access to the client's profile|`true`|

## Admin scope

| Scope | Description | Is Read-only|
|-------|-------------|-------------|
|`todennus/admin:read:user.profile`|Grant read-only access to all users' profiles|`true`|
|`todennus/admin:validate:user`|Grant permission to validate all users' credentials|`false`|
|`todennus/admin:create:user`|Grant permission to create new users|`false`|
|`todennus/admin:read:client.profile`|Grant read-only access to all client profiles|`true`|
|`todennus/admin:validate:client`|Grant permission to validate the client's credentials|`false`|
|`todennus/admin:create:client`|Grant permission to create new clients|`false`|
|`todennus/admin:register:file.policy`|Grant permission to register file upload policy|`false`|
|`todennus/admin:create:file.presigned_url`|Grant permission to create file presigned url|`false`|
|`todennus/admin:change:file.refcount`|Grant permission to change ref count of file ownership|`false`|
