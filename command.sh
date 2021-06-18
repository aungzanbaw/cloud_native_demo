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
        kubtctl run 
        
    Useful 
        # get all pods
        kubectl get po

        # get replica set
        kubectl get rs

        # get updates for pods and rs
        kubectl get deploy # or deployments 

        # delete deploy
        kubectl delete deploy {name}