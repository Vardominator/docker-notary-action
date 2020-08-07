FROM golang:alpine

ENV GO111MODULE=auto

RUN go get github.com/theupdateframework/notary

RUN go install -tags pkcs11 github.com/theupdateframework/notary/cmd/notary

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]