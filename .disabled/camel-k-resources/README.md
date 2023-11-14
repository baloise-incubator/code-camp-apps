# Camel K
## Setup
The CRD's are deployed at https://github.com/baloise-incubator/okd4-cluster-infra-apps.  
In this repository you can find the Camel K operator and the example apps build during the code camp 2021.

## Local setup
Please install the Kamel CLI from https://camel.apache.org/camel-k/next/installation/installation.html#procedure.

## GitOps
You can use a YAML file like `templates/gitops-integration.yaml`. You may se that the source code is in the YAML
file. As this is not wanted, mixing deployment code with source code. It's recommended to setup a CI process
where you produce the YAML with `kamel run <your-options> -o yaml` and replace the `spec` in the YAML.

In Baloise we have our YAML patch tool in Jenkins and on Github we could use https://github.com/fjogeleit/yaml-update-action.

## Examples
Other examples can be found at https://github.com/apache/camel-kamelets

### HelloJava app
You can find two files in the folder `files`.  
Run them with `kamel run <file-name>`.  
To remove it run `kamel delete <integration-name>`.  

You can find other examples here https://camel.apache.org/camel-k/next/languages/languages.html.

### OpenAPI
You can find an example of a OpenAPI usage in `files/open-api`. You can use OpenAPI v3.  
Over the `operation-id` you can connect operations form the OpenAPI YAML to the Camel DSL.  
To run the integration you have to do `kamel run OpenApi.java --open-api openapi.yaml --trait route.tls-termination=edge`. 
The `tls-termination=edge` is for OpenShift to enable HTTPS.

#### Constraints
Be aware that validation (e.g. body) aren't working.

### Kamelets
You can finde some Kamelet sample implementations in `templates`. These should show how to use built in sources (https://github.com/apache/camel-kamelets)
or an own defined Kamelet as source.

## Learnings
- If you change you source code the image depolyed to OpenShift doesn't change. The source coded is mounted via volume into the container and not part of the container build.
- Over traits, you can define behavior of Quarkus (e.g. enabled native) and OpenShift and many others aspects
- Which Maven repos is used and other global settings can be defined in the platform