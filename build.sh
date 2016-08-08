#!/bin/sh

GOPATH=`pwd`
export GOPATH

rm -rf $GOPATH/bin/*

GOOS=darwin go build -o $GOPATH/bin/helloworld github.com/barrowkwan/gocd_golang_hello

