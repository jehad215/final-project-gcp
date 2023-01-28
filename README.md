# GCP Final project

### Build python docker image from Dockerfile, push to GCR :
  ```bash
  * docker build -t gcr.io/jehad-devops-iti/python-image .
  * docker push gcr.io/jehad-devops-iti/python-image
  ```
### Pull redis image from DockerHub, push to GCR :
  ```bash
  * docker pull redis
  * docker tag redis gcr.io/jehad-devops-iti/redis-image
  * docker push gcr.io/jehad-devops-iti/redis-image
  ```


### Use terraform commands:
  ```bash
  * terraform init
  * terraform plan
  * terraform apply
  ```

### SSh to VM and install following: 
  * gcloud 
  * kubectl
  * gcloud plugin
#### * Connect to your cluster

### Copy yml files to VM:
  ```bash
  * gcloud compute scp --recurse deployment/ private-vm:~  --zone "us-central1-c"   --tunnel-through-iap
  ``` 
  * Apply All yml Files







### Take loadbalancer IP with port and test in your browser:



