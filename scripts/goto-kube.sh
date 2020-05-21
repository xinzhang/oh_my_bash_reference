#!/bin/bash

if [[ -z "${GCP_ZONE}" ]]; then
  echo 'can not find zone env, reset it to default'
  export GCP_ZONE="australia-southeast1-a"
fi

if [[ $# -lt 2 ]]; then
  echo 'goto-kube.sh {project_id} {cluster_name}'
  exit;
fi

eval gcloud config set project "$1"
eval gcloud container clusters get-credentials $2 --zone ${GCP_ZONE}
eval kubectl config use-context gke_$1_${GCP_ZONE}_$2