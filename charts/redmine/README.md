# redmine

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 6.0.5](https://img.shields.io/badge/AppVersion-6.0.5-informational?style=flat-square)

A Helm chart for Kubernetes

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://charts.bitnami.com/bitnami | postgresql | ~12.12.10 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity for pod assignment |
| fullnameOverride | string | `""` | Override the full name |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"redmine"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | Image pull secrets |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.className | string | `""` | Ingress class name |
| ingress.enabled | bool | `true` | Enable ingress |
| ingress.hosts | list | `[{"host":"redmine.chart-example.local","paths":[{"path":"/","pathType":"Prefix"}]}]` | Ingress hosts |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| livenessProbe | object | `{"httpGet":{"path":"/","port":"http"},"initialDelaySeconds":60}` | Liveness probe configuration |
| livenessProbe.initialDelaySeconds | int | `60` | Initial delay seconds for liveness probe |
| nameOverride | string | `""` | Override the chart name |
| networkpolicy | object | `{"enabled":false}` | If enabled, will limit redmine network access |
| nodeSelector | object | `{}` | Node selector for pod assignment |
| podAnnotations | object | `{}` | Annotations for the pod |
| podLabels | object | `{}` | Labels for the pod |
| podSecurityContext | object | `{}` | Pod security context e.g. fsGroup: 2000 |
| postgresql.architecture | string | `"standalone"` | PostgreSQL architecture |
| postgresql.auth.database | string | `"redmine"` | Database name |
| postgresql.auth.enablePostgresUser | bool | `false` | Enable postgres user |
| postgresql.auth.existingSecret | string | `""` | Existing secret for database credentials |
| postgresql.auth.generate | bool | `false` | Generate password |
| postgresql.auth.password | string | `"password"` | Password for database access |
| postgresql.auth.username | string | `"redmine"` | Username for database access |
| postgresql.primary.persistence.annotations | object | `{"helm.sh/resource-policy":"keep"}` | Annotations for persistent volume |
| postgresql.primary.persistence.size | string | `"10Gi"` | Size of the persistent volume |
| postgresql.primary.persistence.storageClass | string | `""` | Storage class for persistent volume |
| postgresql.primary.resources.limits.cpu | int | `2` |  |
| postgresql.primary.resources.limits.memory | string | `"1Gi"` |  |
| readinessProbe | object | `{"httpGet":{"path":"/","port":"http"},"periodSeconds":60}` | Readiness probe configuration |
| readinessProbe.periodSeconds | int | `60` | Period seconds for readiness probe |
| redmine.config.default.email_delivery | string | `nil` |  |
| redmine.env.REDMINE_DB_DATABASE | string | `"redmine"` | PostgreSQL database name |
| redmine.env.REDMINE_DB_ENCODING | string | `"utf8"` | PostgreSQL database encoding |
| redmine.env.REDMINE_DB_PASSWORD | string | `"password"` | PostgreSQL database password |
| redmine.env.REDMINE_DB_POSTGRES | string | `"postgres"` | PostgreSQL database host |
| redmine.env.REDMINE_DB_USERNAME | string | `"redmine"` | PostgreSQL database username |
| redmine.env.REDMINE_PLUGINS_MIGRATE | string | `"true"` | Migrate Redmine plugins |
| redmine.env.SECRET_KEY_BASE | string | `"supersecretkey"` | Secret key base for Redmine |
| redmine.persistentStorage.accessModes | list | `["ReadWriteOnce"]` | Access modes for persistent volume |
| redmine.persistentStorage.enabled | bool | `true` | Enable persistent storage |
| redmine.persistentStorage.size | string | `"10Gi"` | Size of the persistent volume |
| redmine.persistentStorage.storageClassName | string | `""` | Storage class name for persistent volume |
| redmine.persistentStorage.volumeMode | string | `"Filesystem"` | Volume mode for persistent volume |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | Resource requests and limits e.g. limits:   cpu: 4   memory: 4Gi requests:   cpu: 1   memory: 1Gi |
| securityContext | object | `{}` | Container security context e.g. capabilities:   drop:   - ALL readOnlyRootFilesystem: true runAsNonRoot: true runAsUser: 1000 |
| service.port | int | `3000` | Service port |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials? |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | Tolerations for pod assignment |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
