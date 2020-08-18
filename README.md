# action-platformsh-cli

## Description

This action calls [Platform.sh CLI](https://github.com/platformsh/platformsh-cli).

## Environment variables

### `PLATFORMSH_CLI_TOKEN`

**Optional** Your Platform.sh [API token](https://docs.platform.sh/development/cli/api-tokens.html).

## Inputs

### `project`

**Optional** Platform.sh project ID.

### `command`

**Optional** Command to run. Default: `list`.

## Example usage

```yaml
uses: actions/platformsh@v3.60.4
env:
  PLATFORMSH_CLI_TOKEN: ${{ secrets.PLATFORMSH_CLI_TOKEN }}
with:
  project: ${{ secrets.PLATFORMSH_PROJECT }}
  command: 'help'
```
