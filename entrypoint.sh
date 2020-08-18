#!/bin/sh -l

# Set project
if [ $1 -ne "" ]
then
  platform project:set-remote $1
fi

# Execute command
result=`platform $2`

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
