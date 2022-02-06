# theharvester-docker

The Harvester Docker Image Kali Linux based
|
Read Me
|
This will enable the use of The Harvester Information Gathering Tool in a Bash shell. 
|
|***

Build from the cloned repository
(sudo) docker build -t theharvester:<tag> .
|
Before lauching the container
Modifiy the Dockerfile lines containing the UID and GUID with your Docker user UID and GUID.
| 
Currently used UIDs are: uid=1000 gid=1000

Running a new container from the image
docker run -ti --rm \
--mount type=bind,src=/path/to/docker/folders/root,dst=/root \
--mount type=bind,src=/path/to/docker/folders/home/kali-user,dst=/home/kali-user \
theharvester:<tag> -d domain
|
|
Running a new container without data persistency
docker run -ti --rm theharvester:<tag> -d domain.com 
or 
docker run -ti --rm theharvester:<tag> --help  