ansible-playbook -e '{ GSLB_ZONE: "aws.yourapplication.io"}' -e '{ gslbDC: ["aws"] }' gslb-deploy.yaml

