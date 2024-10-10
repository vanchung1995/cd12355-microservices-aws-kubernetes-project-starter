# helm repo add bitnami https://charts.bitnami.com/bitnami
# helm install postgres-udacity bitnami/postgresql --set postgresqlPassword=myPassword

helm install postgres-udacity oci://registry-1.docker.io/bitnamicharts/postgresql
