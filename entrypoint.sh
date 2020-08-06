#!/bin/sh -l

result=platform "$1"

echo "::set-output name=return::$result"
