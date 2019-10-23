FROM websphere-liberty:springBoot2
COPY --chown=1001:0 server.xml /config/server.xml
COPY --chown=1001:0 target/acmeair-bookingservice-springboot-2.1.1-SNAPSHOT.jar /config/apps/
RUN configure.sh
