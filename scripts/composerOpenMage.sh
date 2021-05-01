#!/bin/bash

COMPOSER=`which composer`
GIT_PATH=$1
MG_PATH=$2
cd ${MG_PATH}
curl -O ${GIT_PATH}configs/openmage/composer.json
$COMPOSER update
