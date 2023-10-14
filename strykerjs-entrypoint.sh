#!/bin/sh -l
testProject=$1

# export PATH="$PATH:/root/.dotnet/tools"

echo "Changing direcotry to $testProject"
cd $testProject

echo "Starting StrykerJS run"
stryker run
