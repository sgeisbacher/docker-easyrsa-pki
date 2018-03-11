#!/bin/bash

cd /ca
 source vars

if [ ! -f "/ca/keys/ca.key" ]; then
    ./clean-all
    ./build-ca --pass
fi

bash
