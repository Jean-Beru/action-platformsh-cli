#!/bin/sh -l

# Set API token
PLATFORMSH_CLI_TOKEN=$1

# Set project
platform project:set-remote $2

# Execute command
result=`platform $3`

# Check execution status
if [ $? -ne 0 ]
then
  echo "::error ::Command failed"
  exit 1
fi

# Handle multi-lines
result="${result//'%'/'%25'}"
result="${result//$'\n'/'%0A'}"
result="${result//$'\r'/'%0D'}"

# Send output
echo "::set-output name=result::$result"
