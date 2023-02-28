kubectl get ns |grep Terminating | awk {'print $1'} | xargs -I {} sh -c "kubectl get namespace {} -o json > {}.json"
kubectl get ns|grep Terminating | awk {'print $1'} | xargs -I {} sh -c " jq 'del(.spec.finalizers[0])' {}.json > {}2.json"
kubectl get ns|grep Terminating | awk {'print $1'} | xargs -I {} sh -c "curl -k -H \"Content-Type: application/json\" -X PUT --data-binary @{}2dd/ > {}2.json.json http://127.0.0.1:8001/api/v1/namespaces/{}/finalize"
