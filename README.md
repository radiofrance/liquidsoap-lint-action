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
      - uses: radiofrance/liquidsoap-lint-action@main
        with:
          scripts: './example/liquidsoap/myradio.liq ./scripts/transcoder/00-live.liq'         
```

## Inputs

| Field | Description | Required | Default |
|-------|-------------|:--------:|---------|
| `scripts` | Your script to test | :white_check_mark: | |

