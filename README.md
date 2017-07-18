# JBoss Data Virtualization on OpenShift demo's

oc login -u admin -p admin
oc project openshift

oc delete template datavirt63-ext-oracle-psql-s2i

oc create -n openshift -f https://raw.githubusercontent.com/johnathonlee/jdv-ose-demos/master/templates/datavirt63-ext-oracle-psql-s2i.json

