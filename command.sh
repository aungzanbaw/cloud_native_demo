Exe 3.8
    Essential 
        # build the image
        docker build -t go-helloworld .

        # tag the image
        docker tag go-helloworld pixelpotato/go-helloworld:v1.0.0

        # push the image
        docker push pixelpotato/go-helloworld:v1.0.0

Exe 3.16
    Essential 
        kubectl create deploy go-helloworld --image=aungbaw/go-helloworld:v1.0.0
        kubtctl run 
        kubectl get po
        kubectl get rs
        kubectl get deploy
    Useful 
        kubectl 
