#!/bin/sh -l
testProject=$1

export PATH="$PATH:/root/.dotnet/tools"

echo "Changing direcotry to $testProject"
cd $testProject

echo "Starting Stryker.NET run"
dotnet stryker \
  --config-file $2 \
  --reporter html \
  --reporter json \
  --reporter cleartext
