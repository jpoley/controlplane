kubectl taint node $(hostname) node-role.kubernetes.io/control-plane:NoSchedule-
kubectl taint node $(hostname) node-role.kubernetes.io/master:NoSchedule-
