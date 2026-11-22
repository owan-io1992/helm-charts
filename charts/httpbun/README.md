# httpbun

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: latest](https://img.shields.io/badge/AppVersion-latest-informational?style=flat-square)

this chart help create a [httpbun](https://github.com/sharat87/httpbun) for internal testing  
it's have multiple api  
please read official [doc](https://httpbun.com) for more info 

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| owan |  |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| fullnameOverride | string | `""` | Override the full chart name |
| httpRoute | object | `{"annotations":{},"enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"PathPrefix"}]}],"parentRefs":[]}` | Gateway API HTTPRoute configuration. The chart only creates an HTTPRoute. The Gateway must already exist. |
| httpRoute.annotations | object | `{}` | HTTPRoute annotations |
| httpRoute.enabled | bool | `false` | Enable HTTPRoute |
| httpRoute.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"PathPrefix"}]}]` | Hosts and paths for the HTTPRoute |
| httpRoute.parentRefs | list | `[]` | Gateways the HTTPRoute attaches to. Each item is a Gateway API parentRef (name, namespace, sectionName, ...). |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"sharat87/httpbun","tag":""}` | Container image configuration |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"sharat87/httpbun"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | Image pull secrets |
| ingress | object | `{"annotations":{},"className":"","enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"Prefix"}]}]}` | Ingress configuration |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.className | string | `""` | Ingress class name |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"Prefix"}]}]` | Ingress hosts |
| keda | object | `{"cooldownPeriod":120,"enabled":false,"maxReplicaCount":3,"minReplicaCount":1,"pollingInterval":60,"triggers":[{"metadata":{"value":"80"},"metricType":"Utilization","type":"cpu"}]}` | KEDA autoscaling configuration |
| keda.cooldownPeriod | int | `120` | KEDA cooldown period |
| keda.enabled | bool | `false` | Enable KEDA autoscaling |
| keda.maxReplicaCount | int | `3` | Maximum replica count for KEDA |
| keda.minReplicaCount | int | `1` | Minimum replica count for KEDA |
| keda.pollingInterval | int | `60` | KEDA polling interval |
| keda.triggers | list | `[{"metadata":{"value":"80"},"metricType":"Utilization","type":"cpu"}]` | KEDA triggers |
| kind | string | `"Deployment"` |  |
| livenessProbe.httpGet.path | string | `"/anything/livenessProbe"` |  |
| livenessProbe.httpGet.port | string | `"http"` |  |
| livenessProbe.initialDelaySeconds | int | `0` |  |
| livenessProbe.periodSeconds | int | `10` |  |
| nameOverride | string | `""` | Override the chart name |
| nodeSelector | object | `{}` | Node selector for pod assignment |
| podAnnotations | object | `{}` | Annotations to add to pods |
| podDisruptionBudget.enabled | bool | `false` |  |
| podLabels | object | `{}` | Labels to add to pods |
| podSecurityContext | object | `{}` | Pod security context |
| readinessProbe.httpGet.path | string | `"/anything/readinessProbe"` |  |
| readinessProbe.httpGet.port | string | `"http"` |  |
| readinessProbe.periodSeconds | int | `10` |  |
| replicaCount | int | `1` | Number of httpbun replicas to deploy |
| resources | object | `{}` | Resource limits and requests |
| securityContext | object | `{}` | Container security context |
| service | object | `{"port":80,"type":"ClusterIP"}` | Service configuration |
| service.port | int | `80` | Service port |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":true,"name":""}` | Service account configuration |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| startupProbe.httpGet.path | string | `"/anything/startupProbe"` |  |
| startupProbe.httpGet.port | string | `"http"` |  |
| startupProbe.periodSeconds | int | `10` |  |
| strategy | object | `{}` |  |
| tolerations | list | `[]` | Tolerations for pod assignment |
| volumeClaimTemplates | list | `[]` | statefulset only |
| volumeMounts | list | `[]` | Additional volumeMounts on the output Deployment definition. |
| volumes | list | `[]` | Additional volumes on the output Deployment definition. |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
