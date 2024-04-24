# liquidsoap-lint-action

This GitHub Action launches a test of a LiquidSoap script.

## Example Workflows

### Using the latest tag

``` yaml
---
name: Test (Liquidsoap)
on: # yamllint disable-line rule:truthy
  pull_request:
    types: [opened, synchronize]
    paths: ["**/*.liq"]

jobs:
  liquidsoap-test-transcoder-stereo:
    name: Liquidsoap Test Transcoder Stereo
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11 # v4.1.1
      - uses: ./.github/actions/liquidsoap-lint-action
        with:
          inventory: './example/liquidsoap/myradio.liq'
          script: './scripts/transcoder/00-live.liq'         
```

## Inputs

| Field | Description | Required | Default |
|-------|-------------|:--------:|---------|
| `inventory` | Your channel inventory | :white_check_mark: | |
| `script` | Your script to test | :white_check_mark: | |

