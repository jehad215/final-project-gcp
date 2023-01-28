## GCP Final project

### Build python docker image from Dockerfile, push to GCR :
  ```bash

  $ docker build . -t gcr.io/jehad-iti/python-image
  $ docker push gcr.io/jehad-iti/python-image

  ```
### Pull redis image from DockerHub, push to GCR :
  ```bash

  $ docker pull redis
  $ docker tag redis gcr.io/jehad-iti/redis-image
  $ docker push gcr.io/jehad-iti/redis-image

  ```
![home_Page Image](./outputs/images.png)

### Use terraform commands:
  ```bash

  $ terraform init
  $ terraform plan
  $ terraform apply

  ```

### SSh to VM and install following: 

  * gcloud 
  * kubectl
  * gcloud plugin

### Connect to cluster:
  ```bash

  $ gcloud container clusters get-credentials private-cluster --zone us-east4-c --project jehad-iti

  ```
### Copy yml files to VM:
  ```bash

  $ gcloud compute scp --recurse deployment/ private-vm:/home/jehad --zone us-east4-c --tunnel-through-iap
  
  ``` 
### Apply All yml Files:
  ```bash

  $ Kubectl create -f deployment

  ```

## workloads
![home_Page Image](./outputs/workloads.png)
## services
![home_Page Image](./outputs/services.png)

### Take loadbalancer IP with port and test in your browser:
![home_Page Image](./outputs/output.png)



