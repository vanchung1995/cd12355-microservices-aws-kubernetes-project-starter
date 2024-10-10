# check account aws configre is true
aws sts get-caller-identity

# if not uncomment this line and fill aws credentials:
# aws configure

# create cluster eks and nodegroup after configure account
eksctl create cluster --name workspace-cluster --region us-east-1 --nodegroup-name workspace-nodegroup --node-type t3.small --nodes 1 --nodes-min 1 --nodes-max 2

# update eks to point to cluster created. It will create a file to save context point to this cluster
aws eks --region us-east-1 update-kubeconfig --name workspace-cluster

# verify current context, should show arn:aws:eks:us-west-2:411764878390902:cluster/workspace-cluster
kubectl config current-context

# view all config of kubectl
kubectl config view

# get all context: each context equivalent to 1 cluster
kubectl config get-contexts

# delete context
kubectl config delete-context NAME

# delete eks cluster
eksctl delete cluster --name workspace-cluster --region us-east-1

# get namespace of cluster
kubectl get namespace
