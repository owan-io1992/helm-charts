# minio

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.20250907](https://img.shields.io/badge/AppVersion-0.20250907-informational?style=flat-square)

A Helm chart for Kubernetes, featuring MinIO. Special thanks to cleanstart/minio and georgmangold/console for their excellent work.

## Source Code

* <https://hub.docker.com/r/cleanstart/minio>
* <https://github.com/georgmangold/console/tree/main>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| console | object | `{"affinity":{},"env":[{"name":"CONSOLE_MINIO_SERVER","value":"http://{{ include \"minio.fullname\" . }}-s3api:{{ .Values.minio.service.s3api.port }}"},{"name":"CONSOLE_MINIO_REGION","value":"us-east-1"}],"image":{"pullPolicy":"IfNotPresent","repository":"ghcr.io/georgmangold/console","tag":"v1.8.1"},"imagePullSecrets":[],"nodeSelector":{},"podAnnotations":{},"podLabels":{},"podSecurityContext":{},"replicaCount":1,"resources":{},"securityContext":{},"service":{"port":9090,"type":"ClusterIP"},"tolerations":[]}` | MinIO Console configuration. ref: https://github.com/georgmangold/console |
| console.affinity | object | `{}` | Affinity for pod scheduling. ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity |
| console.env | list | `[{"name":"CONSOLE_MINIO_SERVER","value":"http://{{ include \"minio.fullname\" . }}-s3api:{{ .Values.minio.service.s3api.port }}"},{"name":"CONSOLE_MINIO_REGION","value":"us-east-1"}]` | Environment variables for the MinIO Console. ref: https://github.com/georgmangold/console/blob/main/docs/Environment.md |
| console.image | object | `{"pullPolicy":"IfNotPresent","repository":"ghcr.io/georgmangold/console","tag":"v1.8.1"}` | MinIO Console container image configuration. ref: https://kubernetes.io/docs/concepts/containers/images/ |
| console.image.pullPolicy | string | `"IfNotPresent"` | MinIO Console image pull policy. |
| console.image.repository | string | `"ghcr.io/georgmangold/console"` | MinIO Console image repository. |
| console.image.tag | string | `"v1.8.1"` | Overrides the image tag whose default is the chart appVersion. |
| console.imagePullSecrets | list | `[]` | Secrets for pulling an image from a private repository. ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| console.nodeSelector | object | `{}` | Node labels for pod assignment. ref: https://kubernetes.io/docs/user-guide/node-selection/ |
| console.podAnnotations | object | `{}` | Annotations to add to the pod. ref: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ |
| console.podLabels | object | `{}` | Labels to add to the pod. ref: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ |
| console.podSecurityContext | object | `{}` | Security context for the pod. ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| console.replicaCount | int | `1` | Number of replicas for the MinIO Console deployment. ref: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/ |
| console.resources | object | `{}` | Resource requests and limits for the MinIO Console container. ref: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ |
| console.securityContext | object | `{}` | Security context for the container. ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| console.service.port | int | `9090` | MinIO Console service port. |
| console.service.type | string | `"ClusterIP"` | MinIO Console service type. |
| console.tolerations | list | `[]` | Tolerations for pod scheduling. ref: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/ |
| fullnameOverride | string | `""` | String to fully override `minio.fullname` template. |
| minio.affinity | object | `{}` | Affinity for pod scheduling. ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#affinity-and-anti-affinity |
| minio.args | list | `["server","/data","--console-address",":9001"]` | Arguments to pass to the MinIO server. |
| minio.buckets | list | `[]` | List of buckets to auto-create on startup. |
| minio.image | object | `{"pullPolicy":"IfNotPresent","repository":"cleanstart/minio","tag":""}` | MinIO container image configuration. ref: https://kubernetes.io/docs/concepts/containers/images/ |
| minio.image.pullPolicy | string | `"IfNotPresent"` | MinIO image pull policy. |
| minio.image.repository | string | `"cleanstart/minio"` | MinIO image repository. |
| minio.image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| minio.imagePullSecrets | list | `[]` | Secrets for pulling an image from a private repository. ref: https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/ |
| minio.livenessProbe | object | `{"httpGet":{"path":"/minio/health/live","port":"s3api"},"initialDelaySeconds":30,"periodSeconds":30}` | Liveness and readiness probes configuration. ref: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/ |
| minio.minio_region_name | string | `"us-east-1"` | MinIO server region name. |
| minio.minio_root_password | string | `"minioadmin"` | MinIO root password for initial setup. |
| minio.minio_root_user | string | `"minioadmin"` | MinIO root user for initial setup. |
| minio.nodeSelector | object | `{}` | Node labels for pod assignment. ref: https://kubernetes.io/docs/user-guide/node-selection/ |
| minio.persistentStorage | object | `{"accessModes":["ReadWriteOnce"],"size":"5Gi","storageClassName":""}` | Persistent storage configuration. |
| minio.persistentStorage.accessModes | list | `["ReadWriteOnce"]` | Persistent volume access modes. |
| minio.persistentStorage.size | string | `"5Gi"` | Size of the persistent volume. |
| minio.persistentStorage.storageClassName | string | `""` | Storage class name for persistent volume. |
| minio.podAnnotations | object | `{}` | Annotations to add to the pod. ref: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ |
| minio.podLabels | object | `{}` | Labels to add to the pod. ref: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ |
| minio.podSecurityContext | object | `{"fsGroup":1000}` | Security context for the pod. ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| minio.readinessProbe.httpGet.path | string | `"/minio/health/ready"` |  |
| minio.readinessProbe.httpGet.port | string | `"s3api"` |  |
| minio.readinessProbe.initialDelaySeconds | int | `0` |  |
| minio.readinessProbe.periodSeconds | int | `10` |  |
| minio.resources | object | `{}` | Resource requests and limits for the MinIO container. ref: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/ |
| minio.securityContext | object | `{"allowPrivilegeEscalation":false,"capabilities":{"drop":["ALL"]},"readOnlyRootFilesystem":true,"runAsGroup":1000,"runAsNonRoot":true,"runAsUser":1000}` | Security context for the container. ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ |
| minio.service | object | `{"s3api":{"port":9000,"type":"ClusterIP"}}` | Service configuration. ref: https://kubernetes.io/docs/concepts/services-networking/service/ |
| minio.service.s3api.port | int | `9000` | S3 API service port. |
| minio.service.s3api.type | string | `"ClusterIP"` | S3 API service type. |
| minio.tolerations | list | `[]` | Tolerations for pod scheduling. ref: https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/ |
| nameOverride | string | `""` | String to partially override `minio.fullname` template. |
| serviceAccount | object | `{"annotations":{},"automount":true,"create":false,"name":""}` | Service account configuration. ref: https://kubernetes.io/docs/concepts/security/service-accounts/ |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
