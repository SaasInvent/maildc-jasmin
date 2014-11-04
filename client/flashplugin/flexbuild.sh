#!/bin/sh
export FLEX_HOME=/home/ubuntu/workingbox/flex
export PATH="$PATH":"$FLEX_HOME/bin"
mxmlc -static-link-runtime-shared-libraries=false -compiler.source-path="/home/ubuntu/maildc-jasmin/client/flashplugin/"  maildc.mxml
