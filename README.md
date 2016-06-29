This will contain some sample container apps for Azure Service Fabric

## Background

## Commands to deploy app

  ```
  azuresfcli servicefabric cluster connect http://localhost:19080
  azuresfcli servicefabric application-package copy hello-world fabric:ImageStore
  azuresfcli servicefabric application type register hello-world
  azuresfcli servicefabric application create fabric:/hwapp1 HelloWorldAppType 1.0
  azuresfcli servicefabric service create --application-name fabric:/hwapp1 --service-name fabric:/hwapp1/hwservice1 --service-type-name HelloWorldServiceType --instance-count 1 --service-kind Stateless --partition-scheme Singleton
  ```
