# Run Stryker GitHub Action

This action runs [Stryker.NET](https://stryker-mutator.io/docs/stryker-net/introduction/) on your specified test project.

## Inputs

### `tool`

**Required** The version of stryker that needs to be ran. accepted values: 'Stryker.NET'

### `testProject`

**Required** The path to the directory of the test project that needs to be tested by Stryker. No default.

### `breakAt`

**Optional** Set the minimal mutation score threshold for the action to succeed. If the threshold is not met, the action will fail the pipeline. The default value is `0`. 

## Outputs

### `html-report`

This action generates an HTML report from the Stryker run, which can be uploaded as an artifact.

## Example usage

```yaml
# File: .github/workflows/mutation-test.yaml

on:
  # Run the mutation tests when changes are pushed to the main branch
  push:
    branches:
      - 'main'
jobs:
  mutation-test:
    uses: actions/checkout@v3

    uses: stryker-mutator/github-action@v0.0.1
      with:
        testProject: "BusinessLogic.Test/" # required
        breakAt: "75" # Optional

    uses: actions/upload-artifact@v3
      with:
        name: html-report
        path: ${{github.workspace}}/BusinessLogic.Test/StrykerOutput/**/**/*.html