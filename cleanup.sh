azure servicefabric service delete fabric:/SimpleContainerApp/StatelessFrontendService
azure servicefabric service delete fabric:/SimpleContainerApp/StatelessBackendService
azure servicefabric application delete fabric:/SimpleContainerApp
azure servicefabric application type unregister SimpleContainerApp 1.0