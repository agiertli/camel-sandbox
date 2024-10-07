#!/bin/sh

NAMESPACE=$(oc project -q)

echo "kubernetes run ${1} --image-group=$NAMESPACE --cluster-type=openshift --trait container.name=camel-sandbox --trait route.enabled=true --trait route.tls-termination=edge --trait-profile=openshift"

start_time=$(date +%s)

camel kubernetes run ${1} --image-group=$NAMESPACE --cluster-type=openshift --trait container.name=camel-sandbox --trait route.enabled=true --trait route.tls-termination=edge --trait-profile=openshift

end_time=$(date +%s)

duration=$((end_time - start_time))

# Print the result
echo "Execution time: $duration seconds"

oc get routes -n $NAMESPACE --no-headers -o custom-columns="NAME:.metadata.name,HOST:.spec.host,PORT:.spec.port.targetPort" | while read -r name host port; do
  if [ "$port" = "http" ]; then
    echo "https://$host"
  fi
done
