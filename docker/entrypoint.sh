#!/bin/bash

set -e
set -o pipefail

pushd /build
./openssl/build.sh
make -j5
cp -v build/tpm_server /binary/tpm_server
echo "Microsoft TPM 2.0 Simulator built with success"
popd 