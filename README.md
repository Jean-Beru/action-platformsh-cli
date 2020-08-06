# action-platformsh-cli

## Description

This action calls [Platform.sh CLI](https://github.com/platformsh/platformsh-cli).

## Inputs

### `api_token`

**Required** Platform.sh [API token](https://docs.platform.sh/development/cli/api-tokens.html).

### `command`

**Required** Command to run.

## Example usage

```yaml
uses: actions/platformsh@v3.60.4
with:
  api_token: 'abc124'
  command: 'help'
```
