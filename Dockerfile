From openjdk:8
COPY . src/java
WORKDIR /src/java
RUN ["javac", "Sample.java"]
ENTRYPOINT ["java", "Sample"]