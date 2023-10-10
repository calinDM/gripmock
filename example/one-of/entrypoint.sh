#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/one-of/stub --proto-dirs=example/one-of &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/one-of/client/*.go