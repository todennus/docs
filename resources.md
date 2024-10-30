# Resources


## User

| Field          | Type        | Description       |
| -------------- | ----------- | ----------------- |
| `id`           | `snowflake` | User ID           |
| `username`     | `string`    | Username (unique) |
| `display_name` | `string`    | User display name |
| `role`         | `string`    | User role         |


## OAuth2 Client

| Field             | Type        | Description                   |
| ----------------- | ----------- | ----------------------------- |
| `client_id`       | `snowflake` | Client ID                     |
| `owner_id`        | `snowflake` | User ID of the client's owner |
| `name`            | `string`    | Client name                   |
| `is_admin`        | `bool`      | Client name                   |
| `is_confidential` | `bool`      | Client name                   |
