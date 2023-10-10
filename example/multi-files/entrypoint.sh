#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/multi-files/stub --proto-dirs=example/multi-files &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/multi-files/client/*.go