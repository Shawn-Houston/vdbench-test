#! /bin/bash

oc delete -f stateful-set.yaml
oc delete -f image-stream.yaml
oc delete -f build-config.yaml
oc delete -f config-map.yaml
oc delete -f service.yaml
oc delete -f route.yaml
oc delete -f www-pvc.yaml

