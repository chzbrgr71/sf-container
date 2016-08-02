Demo container apps for Azure Service Fabric on Linux

## Background
Multiple samples in this repo. 

1. hello-world: This app uses a golang web container showing some basic info about the container
2. SimpleContainerApp: Frontend and backend containers showing service discovery and networking

## Instructions

1. hello-world (CLI commands to deploy hello-world app)
  ```
  azuresfcli servicefabric cluster connect http://localhost:19080
  azuresfcli servicefabric application package copy hello-world fabric:ImageStore
  azuresfcli servicefabric application type register hello-world
  azuresfcli servicefabric application create fabric:/hwapp1 HelloWorldAppType 1.0
  azuresfcli servicefabric service create --application-name fabric:/hwapp1 --service-name fabric:/hwapp1/hwservice1 --service-type-name HelloWorldServiceType --instance-count 1 --service-kind Stateless --partition-scheme Singleton
  ```

2. SimpleContainerApp 
  ```
  azuresfcli servicefabric application package copy SimpleContainerApp fabric:ImageStore
  azuresfcli servicefabric application type register SimpleContainerApp
  azuresfcli servicefabric application create fabric:/SimpleContainerApp SimpleContainerApp 1.0
  azuresfcli servicefabric service create --application-name fabric:/SimpleContainerApp --service-name fabric:/SimpleContainerApp/StatelessBackendService --service-type-name StatelessBackendService --instance-count 5 --service-kind Stateless --partition-scheme Singleton --placement-constraints "NodeType == Backend"
  azuresfcli servicefabric service create --application-name fabric:/SimpleContainerApp --service-name fabric:/SimpleContainerApp/StatelessFrontendService --service-type-name StatelessFrontendService --instance-count 1 --service-kind Stateless --partition-scheme Singleton --placement-constraints "NodeType == Frontend"
  ```

  Go to http://<frontend public-ip>:8080 

  Upgrade App Steps:
  

