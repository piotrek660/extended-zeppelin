# extended-zeppelin
Apache Zeppelin (https://zeppelin.apache.org/) based on the apache/zeppelin image, with some extras for easy interaction with data on AWS:
- pandas upgrade
- s3fs
- boto3

## Build and Run


Just bild the image:

```bash
docker build . -t ezepplin
```



Run the container:
```bash
docker run -ti --rm \
  -p 8080:8080 \
  -v $PWD/notebook:/notebook \
  -e ZEPPELIN_ADDR=0.0.0.0 \
  -e ZEPPELIN_NOTEBOOK_DIR='/notebook' \
  --name ezepplin \
  ezepplin:latest
```

With **$PWD/notebook** you can store your notebooks locally. 

## AWS Keys

There are several ways to provide the key for the container:

- mount
```bash
-v $HOME/.aws/credentials:/home/app/.aws/credentials:ro
```

- enviroment variables
```bash
 -e AWS_ACCESS_KEY_ID=ABCD -e AWS_SECRET_ACCES_KEY=EFGH
```