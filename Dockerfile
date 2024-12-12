FROM openjdk:17
EXPOSE 8089
ADD /target/eventsProject-1.0.0.jar events
ENTRYPOINT ["java", "-jar","events"]
