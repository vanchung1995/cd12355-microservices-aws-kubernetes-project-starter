# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm install postgres-udacity bitnami/postgresql --set postgresqlPassword=myPassword

# get all config map
kubectl get cm

# create configmap for sql scripts
kubectl create configmap initdbscripts --from-file=create_table.sql=./1_create_tables.sql --from-file=seed_users.sql=./2_seed_users.sql --from-file=seed_tokens.sql=./3_seed_tokens.sql

# install postgress
# helm install --set primary.initdb.scriptsConfigMap=initdbscripts --set primary.persistence.enabled=false  postgres-udacity oci://registry-1.docker.io/bitnamicharts/postgresql

helm install    --set primary.initdb.scriptsConfigMap=initdbscripts \
                --set primary.persistence.existingClaim=postgresql-pvc \
                --set volumePermissions.enabled=true \
                --set primary.persistence.enabled=false \
                --set primary.persistence.mountPath=/bitnami/postgresql/data \
                postgres-udacity oci://registry-1.docker.io/bitnamicharts/postgresql

# uninstall postgres
helm uninstall postgres-udacity

