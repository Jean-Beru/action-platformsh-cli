# action-platformsh-cli

## Description

This action calls [Platform.sh CLI](https://github.com/platformsh/platformsh-cli).
 
## Inputs

### `token`

**Required** Platform.sh [API token](https://docs.platform.sh/development/cli/api-tokens.html).

### `project`

**Required** Platform.sh project ID.

### `command`

**Optional** Command to run. Default: `list`.

## Example usage

```yaml
uses: actions/platformsh@v3.60.4
with:
  token: ${{ secrets.PLATFORMSH_CLI_TOKEN }}
  project: ${{ secrets.PLATFORMSH_PROJECT }}
  command: 'help'
```
