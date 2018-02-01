#!/bin/bash
git clone https://github.com/elixir-europe/ega-data-api-v3-hystrixdashboard.git
mvn -f /ega-data-api-v3-hystrixdashboard/pom.xml install
mv /ega-data-api-v3-hystrixdashboard/target/HystrixServer-0.0.1-SNAPSHOT.war /EGA_build
mv /ega-data-api-v3-hystrixdashboard/docker/hystrixd.sh /EGA_build
mv /ega-data-api-v3-hystrixdashboard/docker/Dockerfile_Deploy /EGA_build
