# Consul DC Testing

This repository is dedicated to testing various datacenter (DC) topographies using Consul. The goal is to explore different network configurations and their impact on service communication across multiple datacenters.

## OSS Standard Topography

In this topography, we have four datacenters:

- **DC1, DC2, DC3:** Each of these datacenters contains active Consul servers.
- **DC4:** This is an additional datacenter with no servers, used for further testing scenarios.

All datacenters are fully networked, meaning they can freely communicate with each other. This configuration serves as the baseline for our testing. Future tests will involve introducing network policies to enforce segmentation and test how network isolation affects communication between services.

![Standard Diagram](./docs/standard.png)

### To run
```bash
kubectl apply -f 1-Standard/1-Namespace.yaml
kubectl apply -f 1-Standard/2-ConfigMap.yaml
kubectl apply -f 1-Standard/3-StatefulSet.yaml
```

### To Access
```bash
kubectl -n consul-dc1 port-forward services/consul 8500:8500
```