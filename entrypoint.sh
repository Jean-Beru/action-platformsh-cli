#!/bin/sh -l

# Check API token
if [ -z $PLATFORMSH_CLI_TOKEN ]
then
  echo "::error ::Missing PLATFORMSH_CLI_TOKEN environment variable"
  exit 1
fi

# Execute
result=`platform $1`

# Check command execution status
if [ $? -ne 0 ]
then
  exit 1
fi

# Handle multi-lines
result="${result//'%'/'%25'}"
result="${result//$'\n'/'%0A'}"
result="${result//$'\r'/'%0D'}"

# Send output
echo "::set-output name=return::$result"
