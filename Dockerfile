FROM golang

ENV GO111MODULE=auto

RUN go get github.com/theupdateframework/notary

RUN go install -tags pkcs11 github.com/theupdateframework/notary/cmd/notary

ENTRYPOINT [ "/entrypoint.sh" ]