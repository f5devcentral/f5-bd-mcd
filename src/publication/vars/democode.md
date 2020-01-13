# Demo Code
Use the code snippits below to practice upgrading the demo application and addeing a new application

### Snippits

#### Bookinfo - Product Page V1
```
appState:
  - dcname: onprem
    monitorTypeAS3: http
    monitorTypeGslb: https_advanced
    name: productpage-v1
    nameNormalized: productpage_v1
    project: bookinfo
    receiveString: HTTP/1.
    ruleFileAS3: clientSslFalse
    sendString: 'GET / HTTP/1.1\\r\\nHost: productpage\\r\\n\\r\\n'
    servicePortAS3: 9080
    state: bigip-unconfigured
    uriHost: productpage
    uriHostGslbRatio: '50'
    uriHostNormalized: productpage
    uriPath: /
  - dcname: aws
    monitorTypeAS3: http
    monitorTypeGslb: https_advanced
    name: productpage-v1
    nameNormalized: productpage_v1
    project: bookinfo
    receiveString: HTTP/1.
    ruleFileAS3: clientSslFalse
    sendString: 'GET / HTTP/1.1\\r\\nHost: productpage\\r\\n\\r\\n'
    servicePortAS3: 9080
    state: bigip-unconfigured
    uriHost: productpage
    uriHostGslbRatio: '50'
    uriHostNormalized: productpage
    uriPath: /
```
#### Bookinfo - Product Page V2
```
  - dcname: onprem
    monitorTypeAS3: http
    monitorTypeGslb: https_advanced
    name: productpage-v2
    nameNormalized: productpage_v2
    project: bookinfo
    receiveString: HTTP/1.
    ruleFileAS3: clientSslFalse
    sendString: 'GET / HTTP/1.1\\r\\nHost: productpage\\r\\n\\r\\n'
    servicePortAS3: 9080
    state: bigip-unconfigured
    uriHost: productpage
    uriHostGslbRatio: '50'
    uriHostNormalized: productpage
    uriPath: /
  - dcname: aws
    monitorTypeAS3: http
    monitorTypeGslb: https_advanced
    name: productpage-v2
    nameNormalized: productpage_v2
    project: bookinfo
    receiveString: HTTP/1.
    ruleFileAS3: clientSslFalse
    sendString: 'GET / HTTP/1.1\\r\\nHost: productpage\\r\\n\\r\\n'
    servicePortAS3: 9080
    state: bigip-unconfigured
    uriHost: productpage
    uriHostGslbRatio: '50'
    uriHostNormalized: productpage
    uriPath: /
```
#### Basic App - index.php
```
  - dcname: onprem
    monitorTypeAS3: https
    monitorTypeGslb: https_advanced
    name: basic-app-v1
    nameNormalized: basic_app_v1
    project: basic-app
    receiveString: HTTP/1.
    ruleFileAS3: clientSslTrue
    sendString: 'GET / HTTP/1.1\\r\\nHost: basic-app\\r\\n\\r\\n'
    servicePortAS3: 8080
    state: bigip-unconfigured
    uriHost: basic-app
    uriHostGslbRatio: '50'
    uriHostNormalized: basic_app
    uriPath: /
  - dcname: aws
    monitorTypeAS3: https
    monitorTypeGslb: https_advanced
    name: basic-app-v1
    nameNormalized: basic_app_v1
    project: basic-app
    receiveString: HTTP/1.
    ruleFileAS3: clientSslTrue
    sendString: 'GET / HTTP/1.1\\r\\nHost: basic-app\\r\\n\\r\\n'
    servicePortAS3: 8080
    state: bigip-unconfigured
    uriHost: basic-app
    uriHostGslbRatio: '50'
    uriHostNormalized: basic_app
    uriPath: /
```