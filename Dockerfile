FROM adoptopenjdk/openjdk11:ubi
ARG JAR_FILE=target/*.jar
ENV BOT_NAME=my_javarush_community_bot
ENV BOT_TOKEN=1375780501:5104306833:AAGxCXWPmf9TUBDd5k8zjj98Nt-xl7BTA94
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Dbot.username=${BOT_NAME}", "-Dbot.token=${BOT_TOKEN}", "-jar", "/app.jar"]