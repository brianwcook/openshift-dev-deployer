#!/bin/bash

cd ~/deploy-ose
#wget https://raw.githubusercontent.com/openshift/origin/master/examples/image-streams/image-streams-rhel7.json

#Get the builder image imagesteams.
for f in image-streams-rhel7.json; do cat $f | oc create -n openshift -f -; done
# for f in db-templates/*.json; do cat $f | oc create -n openshift -f -; done

# wait for imagestreams to process.
   while true; do
  grep 'registry.access.redhat.com/rhscl/python' <<< $(oc get images)
  if [ $? == 0 ]
    then
    break
  fi
  sleep 1
done

# get the database tempaltes and install them
#svn export https://github.com/openshift/origin/trunk/examples/db-templates

# import the DB templates
for f in db-templates/*.json; do cat $f | oc create -n openshift -f -; done

cd ~
