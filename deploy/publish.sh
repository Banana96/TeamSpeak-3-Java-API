#!/bin/bash

if [[ $TRAVIS_PULL_REQUEST == "false" && $TRAVIS_BRANCH == "master" ]]; then
    mvn deploy --settings $GPG_DIR/settings.xml -Pfull -DperformRelease=true -DskipTests=true
    exit $?
fi
