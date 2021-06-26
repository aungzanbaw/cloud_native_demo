Exe 3.8
    Essential 
        # build the image
        docker build -t {NAME} .

        # tag the image
        docker tag {NAME} {DOCKER-HUB-NAME}/{TAG-NAME}

        # push the image
        docker push {DOCKER-HUB-NAME}/{TAG-NAME}
    
    Useful
        # get all images 
        docker images

        # get processes status
        docker ps

Exe 3.15
    Essential 
        # get control plan or add-ons endpoints 
        kubectl cluster-info

        # get all the nodes in a cluster
        kubectl get nodes 

        # get all the information/logs
        kubectl cluster-info dump

        # get all the configurations/details about the node
        kubectl describe node {NODE-NAME}


Exe 3.16
    Essential 
        # create new deploy using given image
        kubectl create deploy {NAME} --image={DOCKER-HUB-NAME}/{TAG-NAME}
        
        # run the image, it's automatically started
        kubtctl run {NAME} --image={DOCKER-HUB-NAME}/{TAG-NAME}

        # port forward/exposed 
        kubectl port-forward po/{NAME-OF-RUNNING-POD} {PORT-EXTERNAL:PORT-INTERNAL}
        
        # edit old deploy
        kubectl edit deploy {NAME} -o yaml

    Useful 
        # get all pods
        kubectl get po # kubectl get pods

        # get replica set
        kubectl get rs # kubectl get replicaset

        # get updates for pods and rs
        kubectl get deploy # kubectl get deployments 

        # delete deploy
        kubectl delete deploy {RUNNING-POD-NAME}

Exe 3.17
    Essential 
        # expose/forward 
        kubectl expose deploy {NAME} --port={PORT} --target-port={APPLICATION-PORT}

        # run alpine image on random pod in default namespace, make it interactive via ssh and remove after quit
        kubectl run test-$RANDOM --namespace=default --rm -it --image=alpine -- sh

        # get data from given IP and Port, and present to current view
        wget -qO- {IP}:{PORT} # it's capital O for Owl
    
    Useful 
        # get services, an abstraction layer over a collection of pods running an application
        kubectl get svc

Exe 3.18
    Essential 
        # purpose separate the configuration from the source code
        # create configmap, --from-file(get from file) --from-literal (get from key-value pair)
        kubectl create configmap {NAME}

        # purpose to store sensitive data, ENV, mounted volume's files
        # create secret, --from-file(get from file) --from-literal (get from key-value pair) 
        kubectl create secret generic {NAME}

        # get an output from kube secrets as yaml (encoded)
        kubectl get secrets {SECRETS-NAME} -o yaml

        # decoded secrete lieral from yaml
        echo "TEXT-FROM-YAML-OUTPUT" | base64 -D

        # get all namespaces 
        kubectl get ns 

        # create a namespace with the specified name
        kubectl create ns {NAME}

        # get all the pods into a created namespace 
        kubectl get po -n {NS-NAME}
    
    Useful
        # To create resources 
        kubectl create RESOURCE {NAME} 
        
        # To describe resources   
        kubectl describe RESOURCE {NAME} 
        
        # To get resources 
        kubectl get RESOURCE {NAME} [-o yaml]
        
        # To edit resources
        kubectl edit RESOURCE {NAME} [-o yaml]
        
        # To label resources
        kubectl label RESOURCE {NAME} [PARAMS]
        
        # To access resources through port-forward 
        kubectl port-forward RESOURCE/{NAME} [PARAMS]

        # To access logs from a resource 
        kubectl logs RESOURCE/{NAME} [FLAGS]
        
        # To delete resources 
        kubectl delete RESOURCE {NAME}
