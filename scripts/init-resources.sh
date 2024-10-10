 # show default storage class is gp2.
kubectl get storageclass

# deploy postgres
kubectl apply -f pvc.yaml
kubectl apply -f pv.yaml
kubectl apply -f postgresql-deployment.yaml

# check pod running
kubectl get pods
# kubectl exec -it postgresql-* -- bash

# run sql with python
psql -U myuser -d mydatabase

    # list all database
    \l

# create service for postgres to expose
kubectl apply -f postgresql-service.yaml

# List the services
kubectl get svc

# Set up port-forwarding to `postgresql-service`
kubectl port-forward service/postgresql-service 5433:5432 &
