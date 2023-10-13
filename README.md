# Run Stryker.NET v1

This action runs [Stryker.NET](https://stryker-mutator.io/docs/stryker-net/introduction/) on your specified test project.

# What's new
- Run [Stryker.Net](https://stryker-mutator.io/docs/stryker-net/introduction/) in your github with a single action
    - Have the stryker HTML report available in your workspace
- Fail the action run if your mutation score isn't met
    

# Usage

See [action.yml](./action.yml)

## Run Stryker.Net on a single test project
```
uses: tom171296/run-stryker-net@vmain
  with:
    testProject: "BusinessLogic.Test/" # required
```
## Inputs

### `testProject`

**Required** The path to the directory of the test project that needs to be tested by Stryker. No default.

### `breakAt`

**Optional** Set the minimal mutation score threshold for the action to succeed. If the threshold is not met, the action will fail the pipeline. The default value is `0`. 

## Outputs

There are no outputs from this action.

## Example usage

``` yaml
# File: .github/workflows/mutation-test.yaml

on:
  # Run the mutation tests when changes are pushed to the main branch
  push:
    branches:
      - 'main'
jobs:
  mutation-test:
    uses: actions/checkout@v3

    uses: tom171296/run-stryker-net@main
      with:
        testProject: "BusinessLogic.Test/" # required
        breakAt: "75" # Optional

    uses: actions/upload-artifact@v3
    with:
      name: html-report
      path: ${{github.workspace}}/BusinessLogic.Test/StrykerOutput/**/**/*.html
```
