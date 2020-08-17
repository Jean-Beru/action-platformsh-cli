# action-platformsh-cli

## Description

This action calls [Platform.sh CLI](https://github.com/platformsh/platformsh-cli).

## Environment variables

### `PLATFORMSH_CLI_TOKEN`

**Required** Platform.sh [API token](https://docs.platform.sh/development/cli/api-tokens.html).  

## Inputs

### `command`

**Required** Command to run.

## Example usage

```yaml
uses: actions/platformsh@v3.60.4
env:
  PLATFORMSH_CLI_TOKEN: ${{ secrets.PLATFORMSH_CLI_TOKEN }}
with:
  command: 'help'
```
