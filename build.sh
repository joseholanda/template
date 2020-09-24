oc delete project testetemplate
oc new-project testetemplate
cp template-base.yaml template.yaml 
cat is-app.yaml  >> template.yaml 
cat mysql-secret.yaml >> template.yaml 
cat jdbc-secret.yaml >> template.yaml 
cat bc-app.yaml  >> template.yaml 
cat dc-mysql.yaml  >> template.yaml 
cat dc-app.yaml  >> template.yaml 
cat svc-mysql.yaml  >> template.yaml 
cat svc-app.yaml  >> template.yaml 
cat route-app.yaml  >> template.yaml 
cat parameters.yaml >> template.yaml 

oc create -f template.yaml

oc new-app --name xpto --template=springdatabase -p ROTA_URL_APP=testando-app-testetemplate.apps.cloud.tecnisys.com.br -p URL_GIT=https://github.com/treinamentookd/secret.git -p NOME_APP=testando
