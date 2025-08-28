#! /bin/bash

oc create -f image-stream.yaml
oc create -f build-config.yaml
oc create -f config-map.yaml
oc create -f service.yaml
oc create -f route.yaml
oc create -f stateful-set.yaml


