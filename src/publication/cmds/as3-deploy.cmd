export APPNAME=productpage-v1
export DCNAME=onprem
export REQUESTED_STATE=published-locally
ansible-playbook -vvv --ask-vault-pass as3-deploy.yaml
