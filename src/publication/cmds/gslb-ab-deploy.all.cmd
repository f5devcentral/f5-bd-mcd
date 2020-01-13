export HOST=bookinfo
export GSLB_RATIO_ONPREM=50
export GSLB_RATIO_AWS=50
ansible-playbook gslb-ab-deploy.yaml

