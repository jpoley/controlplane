kubectl create secret -n upbound-system docker-registry regcred --docker-server=xpkg.upbound.io --docker-username=$1 --docker-password=$2
