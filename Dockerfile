FROM golang

ENV GO111MODULE=auto

WORKDIR /

RUN go get github.com/theupdateframework/notary

RUN go install -tags pkcs11 github.com/theupdateframework/notary/cmd/notary

COPY entrypoint.sh github.com/theupdateframework/notary/cmd/notary/entrypoint.sh

WORKDIR /github.com/theupdateframework/notary/cmd/notary

ENTRYPOINT [ "entrypoint.sh" ]