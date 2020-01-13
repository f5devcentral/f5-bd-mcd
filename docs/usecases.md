# Building and Running the A/B Deployment Use Case

## Purpose
A/B Deployment Demo

## Pre-requisites

- Delete everything
    - By setting the requested vars to all unconfigured
    - Run Job 2 for onprem and cloud (Batched)
    - validate the changes are in effect on the BIG-IPs (routing rules are empty)
    - Run job 4 to unsubscribe
    - Delete app references in local-stepped and publish-global
    - Delete code in appStates.requested.yaml

## Show solution components
- Lauch entire application stack via FireFox
- Exlain each component and it's role
    - Bonus Automation Details 

## Demo A - B

- Productpagev1 configured in both data centers
    - Paste in all product page code
    - productpagev1 configured by default
    - productpagev2 unconfigured
    - run job 2 on-prem (batched)
        - Validate routing rules Pv1 exist
    - run job 2 cloud (batched)
        - Validate routing rules Pv1 exist
- Publish to GSLB
    - run job 3 (publish global) at 50 / 50
    - validate publication to GSLB in F5AAS
    - validate in console output (all green)
    - remove re-add demo domain to AD DNS
- Upgrade app in first DC on-prem
    - Before upgrade set the target DC to 5 % using job 3
        - In this case on-prem 5% cloud 95%
    - Set productpagev1 in on prem to unconfigured let job complete
    - Set productpagev2 in on prem to configured let job complete
    - Show load balancing via CLI
    ``` 
    while true ; do dig +noall +answer productpage.f5bddemos.io @107.162.150.192 ; done
    while true ; do dig +noall +answer productpage.f5bddemos.io @10.105.134.20 ; done
    ```
- Upgrade app in second DC cloud    
    - Run job 2 to Set cloud to unconfigured
        - Explain what happens with GSLB 
    - Run job 0 and show RED
        - Validate we are on only one DC
    - Run job 2 to SET cloud to configured
- Publish to GSLB
    - Run job 3 set productpage to 50 / 50 (Final State)
    - DONE

## Optional Demo Adding a new app
- update appStates.requested.yaml (add basic app code)
    - Validate clientSSL enabled (more services...)
    - Set app to 75 25 (just because)
    - Modify two fields in job 2 basic-app-v1 and job 3 basic-app
    - run job 2 for onprem
    - run job 2 for cloud
    - run job 3 for basic app set GSLB to 50 50
    
    ``` 
    while true ; do dig +noall +answer basicapp.f5bddemos.io @107.162.150.192 ; done
    while true ; do dig +noall +answer basicapp.f5bddemos.io @10.105.134.20 ; done
    ```

    - Published to GSLB (Final state)
    - Validate app exists (DNS caching)
    - DONE

### [Return to Index](README.md)

## Notes
This section is in work