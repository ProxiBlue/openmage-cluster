#!/bin/bash

COMPOSER=`which composer`
GIT_PATH=$1
MG_PATH=$2
wget --no-check-certificate ${GIT_PATH}configs/openmage/composer.json -O ${MG_PATH}/composer.json
cd ${MG_PATH}
$COMPOSER update

