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
        # create new deploy using given image, --replicas --namespace
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

Exe 3.23
    Essential 
        # to edit/create kube commands as declarative approach
        kubectl get {NAME} {RESOURCE-NAME} -o yaml

        # create new deploy using busybox & export to yaml file
        kubectl create deploy busybox --image=busybox -r=5 -n demo --dry-run=client -o yaml > deploy.yaml

        # to apply minifest 
        kubectl apply -f deploy.yaml

Exe 4.5
    Essential 
        # use pip to install any application dependencies 
        RUN pip install -r requirements.txt

        # execute command  on the container start
        CMD [ "python", "app.py" ]
        
        # build an image using a Dockerfile
        docker build -t python-helloworld .

        # store and distribute an image using DockerHub
        docker push pixelpotato/python-helloworld:v1.0.0

Exe 5.10
    Essential 
        # get all nodes
        kubectl get no

        # get all pods 
        kubectl get pods -A

        # follow installation guide from argo website

        # get pods with namespace argocd 
        kubectl get po -n argocd  

        # get services with namespace argocd 
        kubectl get svc -n argocd

        # get services with namespace argocd & modify as yaml
        kubectl get svc -n argocd argocd-server -o yaml
        
        # to expose nodePort from existing config yaml file
        kubectl get svc -n argocd argocd-server -o yaml > argocd-nodeport.yaml
    
        # argo expose with specific nodeport
        kubectl apply -f argocd-nodeport.yaml

        # create argocd-python.yaml from udacity repo then apply it
        kubectl apply -f argocd-python.yaml

        # first sync or deploy on argo dashboard, then check running pods
        kubectl get po -n argocd

        # check your pod status
        kubectl get po 

        
Exe 5.13
    Essential 
        # deploy ArgoCD
        kubectl create namespace argocd
        kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
        
        # get argocd-nginx.yaml from udacity site
        kubectl apply -f argocd-nginx.yaml 

        # expose ports for argocd server
        kubectl port-forward svc/argocd-server -n argocd 8080:443
    Useful
        # get application under namespace argocd
        kubectl get application -n argocd 
        
        # get all namespace
        kubectl get ns

        # get deploy under demo namespace
        kubectl get deploy -n demo
        
        # get service under demo namespace
        kubectl get svc -n demo

        # get configuration map under demo namespace
        kubectl get cm -n demo