# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm install postgres-udacity bitnami/postgresql --set postgresqlPassword=myPassword

# create configmap for sql scripts
kubectl create configmap my-config --from-file=create_table=./1_create_tables.sql --from-file=seed_users=./2_seed_users.sql --from-file=seed_tokens=./3_seed_tokens.sql

# install postgress
helm install postgres-udacity oci://registry-1.docker.io/bitnamicharts/postgresql

# uninstall postgres
helm uninstall postgres-udacity

