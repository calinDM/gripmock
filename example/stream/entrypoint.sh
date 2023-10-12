#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/stream/stub --proto-dirs=example/stream &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/stream/client/*.go