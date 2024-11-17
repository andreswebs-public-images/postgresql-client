# postgresql-client-docker

A postgresql-client docker image for k8s deployment.

## Running locally

### Connect to a PostgreSQL database

```sh
docker run --rm -it --name postgresql-client andreswebs/postgresql-client -h <host_ip_address> -p <port> -U <user>
```

To get a shell inside the running container:

```
docker exec -it postgresql-client /bin/sh
```

## Running on kubernetes

### Prerequisites

You need a working k8s cluster and `kubectl` configured.

### Deploy the objects:

```sh
kubectl apply -f postgresql-client.yml
```

### Attach to the pod:

```sh
kubectl attach --namespace=postgresql-client -ti postgresql-client
```

### Connect to a PostgreSQL database:

```sh
psql -h <host_ip_address> -p <port> -U <user>
```

## Authors

**Andre Silva**

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
