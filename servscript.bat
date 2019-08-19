


cf login -u pklein011@gmail.com

cf create-service cloudantnosqldb Lite pklein011-qvDB -c {\"ram_gb\":4}

echo Pausing  5 minutes for Service to provision
timeout  300

cf create-service-key pklein011-qvDB pklein011-qvDB-key -c {\"permissions\":\"read-write\"}

cf bind-service       qvserver        pklein011-qvDB 

cf restage qvserver

cf service-key pklein011-qvDB  pklein011-qvDB-key  >  pklein011-qvDB-key-key.json

cf env qvserver > qvserver-vcap.json

node q2cloud vcap qvserver-vcap.json