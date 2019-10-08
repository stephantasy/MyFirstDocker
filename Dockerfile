# Nom de l'image utilisé
FROM openjdk:8-jdk-alpine
# Permet d'avoir les fichiers en local (pas dans le container)
VOLUME /tmp
# On place le jag généré à la racine du container
COPY ./target/docker-0.0.1.jar ./docker.jar
# Ce que fait le container au démarrage : execute simplement le jar
ENTRYPOINT ["java", "-jar", "docker.jar"]
