# dotnetcore-docker-sample

Create a container to run a .NET Core application using a Dockerfile.

# Instructions (Ubuntu)

### Install Docker, .NET Core and GIT
The instructions for docker can be found [here](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/).

The instructions for .NET core can be found [here](https://www.microsoft.com/net/core#linuxubuntu).

### Install GIT
``` bash
sudo apt-get install git
```
### Clone the directory
``` bash
git clone https://github.com/code4clouds/dotnetcore-docker-sample.git
```

### Make the build script executable
```bash
chmod +x build.sh
```
### Execute the build script
``` bash
./build.sh
```

### OR Execute the multi-stage docker file
``` bash
docker build -t helloworld .
```

### Run Docker
``` bash
docker run helloworld
```
