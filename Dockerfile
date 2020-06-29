FROM google/cloud-sdk:alpine

COPY run.sh /run.sh

RUN apk --update add openjdk8-jre netcat-openbsd && gcloud components install beta pubsub-emulator

EXPOSE 8681

CMD /run.sh
