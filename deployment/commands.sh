# Enable role for default user
kubectl create clusterrolebinding serviceaccounts-cluster-admin \
  --clusterrole=cluster-admin \
  --group=system:serviceaccounts
clusterrolebinding.rbac.authorization.k8s.io/serviceaccounts-cluster-admin created