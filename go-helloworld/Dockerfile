FROM golang:alpine
WORKDIR /go/src/app 
LABEL maintainer="Aung Zan Baw"
ADD . .
RUN go build -o helloworld main.go
EXPOSE 6112
# command to run on container start, compile first then serve binary 
CMD ["./helloworld"]