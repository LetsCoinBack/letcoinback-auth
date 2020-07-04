FROM maven:3-jdk-11
VOLUME /tmp
ENV PORT=8081
ENV PROFILE=prd
ENV DBURL=${DBURL}
ENV DBPORT=${DBPORT}
ENV DBDATABASENAME=${DBDATABASENAME}
ENV DBUSER=${DBUSER}
ENV DBPASSWORD=${DBPASSWORD}
ADD target/letscoinback-auth.jar letscoinback-auth.jar
EXPOSE $PORT
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILE}",  "-jar",  "letscoinback-auth.jar"]]
