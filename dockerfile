# ===== Stage 1: Build WAR bằng Maven =====
FROM maven:3.8.6-openjdk-8 AS builder

WORKDIR /app

# Copy pom.xml trước để cache dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build WAR (skip test nếu muốn)
RUN mvn package -DskipTests

# ===== Stage 2: Deploy WAR vào Tomcat =====
FROM tomcat:8-jre8
RUN echo 'export CATALINA_OPTS="$CATALINA_OPTS -Dcom.sun.jndi.ldap.object.trustURLCodebase=true"' > /usr/local/tomcat/bin/setenv.sh \
    && chmod +x /usr/local/tomcat/bin/setenv.sh
# Xóa webapps mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR từ stage trước vào ROOT.war
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
