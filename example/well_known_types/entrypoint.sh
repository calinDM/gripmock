#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stubs-dir=example/well_known_types/stub --proto-dirs=example/well_known_types &

# wait for generated files to be available and gripmock is up
sleep 2

go run example/well_known_types/client/*.go
