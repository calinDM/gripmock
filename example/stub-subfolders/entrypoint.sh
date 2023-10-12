#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/stub-subfolders/stub --proto-dirs=example/stub-subfolders &

go run example/stub-subfolders/client/*.go