# postgresql-client-docker

A postgresql-client docker image for k8s deployment.

## Running locally

### Connect to a PostgreSQL database

``` bash
docker run --rm -it --name postgresql-client andreswebs/postgresql-client -u <user> -p<password> -h <host_ip_address> -P <port> -D <database>
```

(Notice that there is no space between `-p` and the password string.)

To get a shell inside the running container:

```
docker exec -it postgresql-client /bin/sh
```

## Running on kubernetes

### Prerequisites

You need a working k8s cluster and `kubectl` configured.

### Deploy the objects:

``` bash
kubectl apply -f postgresql-client.yml
```

### Attach to the pod:

``` bash
kubectl attach --namespace=postgresql-client -ti postgresql-client
```

### Connect to a PostgreSQL database:

``` bash
psql -h <host_ip_address> -p <port> -U <user> -W
```

## Authors

**Andre Silva**

## License

This project is licensed under the [Unlicense](UNLICENSE.md).
