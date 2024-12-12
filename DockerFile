FROM openjdk:17
EXPOSE 8089
ADD /target/events-1.0.jar events
ENTRYPOINT ["java", "-jar","events"]
