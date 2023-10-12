#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

# we need to add example/multi-package ar as included import path
# without it protoc could not find the foo.proto & hello.proto
gripmock --stubs-dir=example/multi-package/stub --proto-dirs=example/multi-package &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/multi-package/client/*.go