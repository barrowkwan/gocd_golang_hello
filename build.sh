#!/bin/sh

GOPATH=`pwd`
export GOPATH

rm -rf $GOPATH/bin/*

go test -v $GOPATH/bin/helloworld github.com/barrowkwan/gocd_golang_hello/country

GOOS=darwin go build -o $GOPATH/bin/helloworld github.com/barrowkwan/gocd_golang_hello

