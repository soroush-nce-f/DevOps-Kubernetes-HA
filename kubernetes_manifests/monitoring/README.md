# Glusterfs

Glusterfs is an open source scale-out filesystem. These examples provide information about how to allow containers use Glusterfs volumes.

The example assumes that you have already set up a Glusterfs server cluster and the Glusterfs client package is installed on all Kubernetes nodes.


# Prerequisites

Set up Glusterfs server cluster; install Glusterfs client package on the Kubernetes nodes.

# Create endpoints

Example:

```yml
apiVersion: v1
kind: Endpoints
metadata:
  name: glusterfs-cluster
  namespace: monitoring
subsets:
  - addresses:
      - ip: 10.100.8.147
      - ip: 10.100.8.148
      - ip: 10.100.8.163
    ports:
      - port: 1
```

The "IP" field should be filled with the address of a node in the Glusterfs server cluster. In this example, it is fine to give any valid value (from 1 to 65535) to the "port" field. 

Create the endpoints,

```bash
kubectl apply -f gluster-endpoints.yml
```
you can verify that the endpoints are successfully created by running

```bash
kubectl get endpoints -n monitoring
NAME                            ENDPOINTS                                      AGE
glusterfs-cluster               10.100.8.147:1,10.100.8.148:1,10.100.8.163:1   4d23h
```
# Create PV and PVC 
Next step is create PV and PVC for Grafana and Prometheus Services

### Prometheus

```bash
kubectl apply -f=prometheus/prometheus-pv-gluster.yml
kubectl apply -f=prometheus/prometheus-pvc-gluster.yml
```
### Grafana

```bash
kubectl apply -f=grafana/grafana-pv-gluster.yml
kubectl apply -f=grafana/grafana-pvc-gluster.yml
```
### Install Prometheus using Helm 

```bash
helm install prometheus --namespace monitoring --set alertmanager.persistentVolume.storageClass="managed-gluster",server.persistentVolume.storageClass="managed-gluster" .
```
### Uninstall Prometheus 

```bash
helm uninstall prometheus --namespace monitoring
```