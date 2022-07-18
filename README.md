# Tanzu Kubernetes Operations(TKO) PoC Test Plan

This PoC test plan and evaluation process focuses on demonstrating functional operation, capabilities, and features of the Tanzu Kubernetes Operations(TKO) product suite. This POC is to spike on-prem data center Kubernetes solution that VMWare Tanzu provides and evaluate creation and management of production grade Kubernetes clusters with operational simplicity, cost efficiency, and automation support.

**IMPORTANT** - This pre-sales offering does not consider all best practices and recommendations for production or extended pilot use.  VMware strongly encourages Customers to thoroughly review all publicly available product documentation and engage with the Professional Services Organization and Partners before going forward with any production design decisions. The PoC evaluation system is not the appropriate platform for intensive and lengthy performance testing and evaluation.

## Intended Audience

This guide is for cloud architects, engineers, administrators, and developers whose organization has an interest integrating Tanzu Kubernetes Operations(TKO) components and platform into their multi-cloud strategy and environments.

## Scope

The Tanzu for Kubernetes Operations(TKO) PoC test and evaluation process focuses on demonstrating functional operation, capabilities, and features of the Tanzu for Kubernetes Operations(TKO) platform and Tanzu Kubernetes Clusters (TKC) deployed at on-prem data centers.


## Goals and Objectives

The goal is promoting Customer confidence in the Tanzu for Kubernetes Operations(TKO) products through an inclusive test approach and procedures worthy for judging the platform’s operational effectiveness and suitability. The following table lists the Tanzu for Kubernetes Operations(TKO) PoC test process' objectives:

ID | Objective |
:-- | :-- |
OB01|Prove the automation and simplicity of deploying and operationalizing Kubernetes clusters
OB02|Reveal the advanced, on-demand networking and security capabilities that vSphere 7 with Kubernetes and NSX ALB enables
OB03|Demonstrate applications leveraging multitude of storage options through the vSphere Cloud Native Storage (CNS)
OB04|Show Platform-wide observability, alerting, and visibility available through integrations with Tanzu Observability and other Open Source Software (OSS) alternatives
OB05|Exhibit the availability of Cluster fleet management, quota policies, resource and capacity visibility, multi-master clusters, and the self-healing resiliency of the individual cluster nodes
OB06|Demonstrate Containers, K8s-as-a-service, Multi-cluster ingress 
OB07|Demonstrate the ability to easily and quickly patching, upgrading and scale-out Kubernetes clusters without disruption to running applications. 
OB08|Show the coexistence of both traditional VM-based and containerized applications running parallel on common infrastructure resources
OB09|Demonstrate multi-tenancy RBAC, Policy management, and guardrail enforcement capabilities for enterprise environments
OB10|Demonstrate managing and securely serving images for containerized applications
OB11|Demonstrate Service mesh solution lifecycle management

 
## Tanzu for Kubernetes Operations(TKO) PoC Process Flow

The quality and completeness of the Customer test goals and objectives, or success criteria, are the key input to constructing useful test cases and producing meaningful results. With that input, the Customer Technical Leads and VMware Systems Engineers can derive a base set of requirements. Then, after analyzing the requirements, generate test scenarios that represent the operational use of the system.  Next, develop test cases within each scenario, ensuring complete allocation of requirements and quantifiable expectations. Finally, execute the test cases to validate system operation and verify compliance with the requirements. 

### Summary Requirements Analysis

The following table contains an assemblage of requirements inferred by the technology; revised and repurposed from Customer's High level requirements; derived from frequently mentioned Customers' goals and objectives; community involvement; and learned through research and development. The requirements form the basis of the test cases inventory and the test procedures, detailed in later sections. Each requirement maps to its overarching objective and test case(s) responsible for demonstrating functional compliance. Because the test approach is scenario-driven, there is not a 1:1 relationship for all requirements and some requirements may be indirectly satisfied by an encompassing test case.


High-level Requirement/Outcomes | ID	| Requirement Description |	Test Case ID(s)	| Status |
--- | --- | --- | --- | --- |
Operate and Manage Kubernetes Infrastructure | RQ01 - 01	| CaaS platform shall provide tools to support multiple tenants/clients | [SC01-TC01](scenarios/operator/sc01-tc01.md) [SC01-TC02](scenarios/operator/sc01-tc02.md)|
Operate and Manage Kubernetes Infrastructure | RQ01 - 02	| CaaS platform shall provide role based access control by integrating with identity system(Active directory) | [SC01-TC02](scenarios/operator/sc01-tc02.md)|
Operate and Manage Kubernetes Infrastructure | RQ01 - 03	| CaaS platform shall create and configure a Supervisor Cluster Namespace(s) with Resource Limitations | [SC01-TC03](scenarios/operator/sc01-tc03.md)|
Operate and Manage Kubernetes Infrastructure | RQ01 - 04	| Supervisor Cluster Control Plane Access and Logging | [SC01-TC04](scenarios/operator/sc01-tc04.md)|
Operate and Manage Kubernetes Infrastructure | RQ01 - 05	| CaaS platform shall provide automation/tools/API for governing the configuration of the clusters | [SC01-TC05](scenarios/operator/sc01-tc05.md) |
New user cluster creation |	RQ02 - 01 |	CaaS platform shall provide automation/tools/API for creation,modification, and deletion of kubernetes clusters	| [SC02-TC01](scenarios/devops/sc02-tc01.md)|
Namespaces creation and setup - Namespace naming, Resource limitation, network policies | RQ02- 03 |	CaaS platform shall create and configure a workload Cluster Namespace(s),  Resource Limitations<br>CaaS platform shall provide automation/tools/API to apply Network Policy for Traffic Management inside Kubernetes | SC02-TC12 |		
Limited permission to namespaces access grant - ADFS integretion, 24 hours assess token creation/delivery |	RQ02 - 04 |	CaaS platform shall provide automation/tools/API to apply RBAC to a Tanzu Kubernetes Grid Cluster and Granting Developer Access | SC02-TC02 |
Istio/Service Mesh installation |	RQ02- 05 |	CaaS platform shall provide lifecycle management functions(create, modify, delete) for Service mesh | SC02-TC08 |
DNS and Cert - Use existing doamin and certs, wildcard already there |	RQ02- 06 |	CaaS platform shall provide delegated DNS for applications hosted in kubernetes clusters<br>CaaS platform shall facilitate the automatic provisioning of Layer-7 HTTP load-balancers for Kubernetes ingress resources.<br>CaaS platform shall allow the importation of custom CA-signed certificates for use with Kubernetes ingress resources<br>Tanzu Kubernetes Cluster Ingress with NSX-ALB | SC02-TC10 SC02-TC11 SC02-TC13 sc02-tc06.md |
Image Registry, Image scaning |	RQ02- 07 |	TBD<br>CaaS platform shall provide automation/tools/API to apply content trust policies on TKG clusters to access images from a private container registry | SC02-TC07 |
jFrog artifactory integration |	RQ02- 08 |	CaaS platform shall provide cluster access to the images residing in the private jFrog Container Registry | SC02-TC07 |
Monitoring/Tracing |	RQ02- 09 |	CaaS platform shall provide tools for monitoring the infrastructure(virtual machines, pods, containers, ingress) of the kubernetes clusters | TMC, TO, AVI |
Dynatrace client deployment |	RQ02- 10 |	CaaS platform shall support Dynatrace client deployment | Work with team on dynatrace setup for the application |
Provide access and collaborate with engineering team to deploy test applications, Scai and test at the application level |	RQ02- 11 |	CaaSplatformshall aprovide utomation/tools/API to access and collaborate with engineering team to deploy test applications(Scai) | Work with team to deploy Scai application|
Secured access from application workload to existing VM based Oracle database deployment |	RQ02- 12 |	CaaS platform shall support secured access from application workload to existing VM based Oracle database deployment. | sc02-tc10.md |
deploy over 2 hosts, turn off one host  |	RQ02- 13 |	CaaS platform shall support Self-Healing Tanzu Kubernetes Cluster | sc04-tc02.md |
logs to splunk, esp security related logs.  |	RQ02- 14 |	CaaS platform shall support integration to log aggregators(Splunk) | SC02-TC06 |
Node OS upgrade |	RQ02- 15 |	TBD | |
Kuberentes version upgrade |	RQ02- 16 |	CaaS platform shall provide automation/tools/API for cluster upgrade | sc04-tc06.md |
Software patching/upgrade |	RQ02- 17 |	TBD | |
Vernerbility scanning and alerting |	RQ02- 18 |	TBD | |
Cert creation and rotation, if needed  |	RQ02- 19 |	CaaS platform shall provide automation/tools/API to manage platform Certs | |
Resource monitoring and alerting |	RQ02- 20 |	CaaS platform shall provide tools for monitoring the infrastructure(virtual machines, pods, containers, ingress) of the kubernetes clusters<br>CaaS platform shall alert based on thresholds<br>CaaS platform shall provide monitoring dashboards for operators | |
Backup and Restore - cluster level and app level |	RQ02- 21 |	CaaS platform shall provide automation/tools/API to Backup and Restore a Tanzu Kubernetes Cluster(s), and Apps | sc04-tc05.md |
Networking needs for communication between base, adming, and user clusters |	RQ02- 22 |	TBD | |		
External LB provision and attachment - Supposed to be provided NSX |	RQ02- 23 |	CaaS platform shall provide tools for provisioning load balancers/ingress for the kubernetes clusters | |
Storage attachment  |	RQ02- 24 |	CaaS platform shall automate the Kubernetes storage provider integration so Kubernetes pods can mount static and dynamic persistent volumes from existing datastores<br>CaaS platform shall provide persistent storage capabilities for containerized applications | |
Firewall/Route to Oracle database stack - ACLs to single IP |	RQ02- 25 |	CaaS platform shall support on-demand configuration of network security policies, which allow for micro-segmenting flows between two (2) or more pods sharing a common network or between namespaces and external IP networks | |
Cluster access kubeconfig management and integration with SPM AD |	RQ02- 26 |	CaaS platform shall provide role based access control on worker clusters by integrating with SPM Active directory | |
Certificates provision and management for cluster communication user |	RQ02- 27 |	CaaS platform shall allow the importation of custom CA-signed certificates for use with Kubernetes ingress resources | |
Certificates provision and management for applications  |	RQ02- 28 |	TBD<br>CaaS platform shall allow the importation of custom CA-signed certificates for use with Kubernetes ingress resources | |
Secret management, integration with on-prem Vault service |	RQ02- 29 |	CaaS platform shall provide automation/tools/api to integration with on-prem Vault service for secrets management on worker clusters | |
Virus scan service, WAF, IDS/IPS TBD |	RQ02- 30 |	IDS/IPS - TBD | |
Built-in automation |	RQ02- 31 |	Non-functional requirement - TBD | |
Api support  |	RQ02- 32 |	Non-functional requirement - TBD | |
24*7 support |	RQ02- 33 |	Non-functional requirement - TBD | |
professional services |	RQ02- 34 |	Non-functional requirement - TBD | |
Turn-around time |	RQ02- 35 |	Non-functional requirement - TBD | |
Toolset usability |	RQ02- 36 |	Non-functional requirement - TBD | |
Performance |	RQ02- 37 |	Non-functional requirement - TBD | |


## Test Environment

>NOTE: BEFORE PROCEEDING TO THE TEST CASES, READ THIS SECTION IN ITS ENTIRETY AS IT INCLUDES PREPARATIONS AND PREREQUISITES REQUIRED TO SUCCESSFULLY RUN THE TEST CASES.

The test cases within this document assume that the installation of vSphere 7 with Tanzu, NSX-T, Cloud Services like Tanzu Mission Control (TMC), Tanzu Service Mesh (TSM), and Tanzu Observability (TO) are complete and deployed to an infrastructure prepared according to the requirements detailed in the "VMware vSphere 7 with Tanzu PoC Prerequisites and Preparations Guide." Additionally, it assumes that the Customer engaged with a VMware Systems Engineer for the vSphere 7 with Tanzu PoC design and installation.  The following subsections identify the environment expectations, software and tools required for effectively conducting the test and evaluation process.

### Software Test Tools

This project contains a `Dockerfile` that comes with preconfigured CLIs like `kubectl`, `tanzu`, `kubectl-vshpere`, ... to provide a pre-built and configured environment that makes executing the provided test cases easier (Called here as Local Management Container).To be able to connect with a Kubernetes Cluster copy/download that Kubernetes Cluster's `kubeconfig` to a file located in `config/kube.conf` inside this project structure (This file should not be checked into a public source repository). When running the Local Management Container from the supplied `make` file the `kubeconfig` will be automatically mapped/copied to the running continer and allow for `kubectl` commands to your Kubernetes Cluster.

#### Building and Running the Local Management Container

##### Build Container

```sh
make build
```

##### Rebuild Container

```sh
make rebuild
```

##### Start and exec to the container

```sh
make run
```

##### Join Running Container

```sh
make join
```

##### Start an already built Local Management Container

```sh
make start
```

##### Stop a running Local Management Container*

```sh
make stop
```

### Test-Cases-Inventory

#### Operator SC01: Operate and Manage Kubernetes Infrastructure

Test Case ID | Test Case Description |
--- | --- |


#### DevOps SC02: Provision and Manage Kubernetes Workload Clusters

Test Case ID | Test Case Description |
--- | --- |

