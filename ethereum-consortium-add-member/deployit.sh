#!/usr/bin/env bash

# TODO:  collision detection on groups
# TODO:  password on command line vs. json param file.

GROUP=t2
LOCATION=australiasoutheast

azure group create $GROUP --location $LOCATION
azure group deployment create -v -g $GROUP -n arm1 -f ./azuredeploy.json -e ./deploy-test.json
