# Enable role for default user
kubectl create clusterrolebinding serviceaccounts-cluster-admin \
  --clusterrole=cluster-admin \
  --group=system:serviceaccounts
clusterrolebinding.rbac.authorization.k8s.io/serviceaccounts-cluster-admin created


# Show with yml format 

 kubectl get pod jenkins-5dc5c8cf98-clwfj -o yaml

# kubernetes monitoring tool
 octant # terminal: brew install octant

 lens # Desktop tool