FROM openjdk:jre-alpine
ADD http://central.maven.org/maven2/com/github/dreamhead/moco-runner/0.12.0/moco-runner-0.12.0-standalone.jar ./moco-runner-standalone.jar
COPY mocks/ ./mocks/
COPY config.json ./config.json
EXPOSE 6789
ENTRYPOINT java -jar moco-runner-standalone.jar http -p 6789 -c config.json