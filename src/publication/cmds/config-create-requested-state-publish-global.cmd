export HOST=bookinfo
export GSLB_RATIO_ONPREM=5
export GSLB_RATIO_AWS=95
ansible-playbook config-create-requested-state-publish-global.yaml


