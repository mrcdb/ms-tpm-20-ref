#!/bin/bash

set -e
set -o pipefail

pushd /build-simulator
echo "Bootstrap project"
./bootstrap
echo "Configure project"
./configure
echo "Build project"
make
cp -v TPMCmd/Simulator/src/tpm2-simulator /binary/tpm2-simulator
echo "Microsoft TPM 2.0 Simulator built with success"
popd 
