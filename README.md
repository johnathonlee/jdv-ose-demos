# JBoss Data Virtualization on OpenShift demo's

oc login -u admin -p admin
oc project openshift

oc delete template datavirt63-ext-oracle-psql-s2i

oc create -n openshift -f https://raw.githubusercontent.com/johnathonlee/jdv-ose-demos/master/templates/datavirt63-ext-oracle-psql-s2i.json

after delete of the project (to restart w/changes to the template):

oc login -u openshift-dev -p devel
oc new-project jdv-bring-data-into-the-paas-demo
oc create -f https://raw.githubusercontent.com/johnathonlee/jdv-ose-demos/master/bringing-data-to-the-paas/oracle-postgresql-driver-image/datavirt-app-secret.yaml
oadm policy add-role-to-user view system:serviceaccount:jdv-bring-data-into-the-paas-demo:datavirt-service-account
curl https://raw.githubusercontent.com/johnathonlee/jdv-ose-demos/master/bringing-data-to-the-paas/oracle-postgresql-driver-image/datasources.properties -o datasources.properties
$ oc secrets new datavirt-app-config datasources.properties
