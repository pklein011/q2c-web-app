call npm install cfenv --save
cf login -u pklein011@gmail.com
cf push
cf env qvserver > qvserver-vcap.js 
node q2cloud vcap qvserver-vcap.js