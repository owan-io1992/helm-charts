#!/bin/bash
# set -x

install_flag=0
helm plugin list | grep secrets
installed_status=$?

# ig no installed helm secrets
if [[ ${installed_status} -ne 0 ]]; then 
    echo "helm secrets not installed, start install"
    install_flag=1
fi

# check version is not missmatch 
echo `helm plugin list | grep secrets` | grep ${HELM_SECRETS_VERSION}
installed_version=$?
if [[ ${installed_version} -ne 0 ]]; then 
    echo "helm secrets version missmatch, start re-install"
    install_flag=1
fi

# start install helm secrets
if [[ ${install_flag} -ne 0 ]]; then 
    curl -LsSf https://github.com/jkroepke/helm-secrets/releases/download/v${HELM_SECRETS_VERSION}/helm-secrets.tar.gz | tar -C "$(helm env HELM_PLUGINS)" -xzf-
fi
