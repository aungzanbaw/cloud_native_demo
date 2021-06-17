FROM golang:alpine
WORKDIR /go/src/app 
LABEL maintainer="Aung Zan Baw"
ADD . .
RUN go build -o helloworld
EXPOSE 6112
CMD ["./helloworld"]