get-ip() {
    local instance_name=$1
    gcloud compute instances describe ${instance_name} --format='get(networkInterfaces[0].accessConfigs[0].natIP)'
}
$@
