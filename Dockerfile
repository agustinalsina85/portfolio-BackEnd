FROM amazoncorretto:17.0.7-alpinejdk

COPY target/Agustin-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
