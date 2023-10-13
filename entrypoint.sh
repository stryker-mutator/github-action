#!/bin/sh -l
testProject=$1

export PATH="$PATH:/root/.dotnet/tools"

echo "Directory listing"
cd /

echo "Directory listing"
ls

echo "Changing direcotry to $testProject"
cd $testProject

echo "Starting Stryker.NET run"
dotnet stryker \
  --break-at $2  \
  --reporter json \
  --reporter cleartext
