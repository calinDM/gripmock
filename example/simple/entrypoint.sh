#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/simple/stub --proto-dirs=example/simple &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/simple/client/*.go