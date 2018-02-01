# EGA.Data.API.v3.HYSTRIX

This is a standalone Spring Hystrix server. It is configured to run on port 8088. 

This service collates services regisered in EUREKA into a single dashboard, for easy monitoring.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Installing

The repository contains pre-compiled jar files with the client. To build it on your local machine, run

```
mvn package
```

This will produce the Hystrix service jar file in the /target directory.

### Experimental [under construction]

The service can be deployed directly to a Docker container, using these instructions:

`wget https://raw.github.com/elixir-europe/ega-data-api-v3-hystrixdashboard/master/docker/runfromsource.sh`  
`wget https://raw.github.com/elixir-europe/ega-data-api-v3-hystrixdashboard/master/docker/build.sh`  
`chmod +x runfromsource.sh`  
`chmod +x build.sh`  
`sudo ./runfromsource.sh  

These commands perform a series of actions:  
1. Pull a build environment from Docker Hub  
2. Run the 'build.sh' script inside of a transient build environment container.  
3. The source code is pulled from GitHub and built  
4. A Deploy Docker Image is built and the compiled service is added to the image  
5. The deploy image is started; the service is automatically started inside the container  
  
The Docker image can also be obtained directly from Docker Hub:  

`sudo docker run -d -p 8088:8088 alexandersenf/ega_hystrix`  or by running the `./runfromimage.sh` file.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE.md](LICENSE.md) file for details

