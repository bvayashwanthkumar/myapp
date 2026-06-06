FROM eclipse-temurin:17-jdk

COPY target/myapp-1.0-SNAPSHOT.jar app.jar

CMD ["java","-cp","app.jar","com.exmaple.App"]