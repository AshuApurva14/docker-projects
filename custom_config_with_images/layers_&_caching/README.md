# Layers and Caching in Containers

- Below command can be used to see layers of any image.
  
   $ docker image history <Image id/name>

- Look into the output of above command it will show you all 
   the layers of particular image.
- The layers shown are in reverse order as per instructions 
  defined in the Dockerfile.

- Also these layers have ages mentioned as when the layers 
  get created, which will help in caching. 

- Remove the package repo from the build image as it will 
  consume more memory and make image bulky.

  rm -rf /etc/apt/sources.list.d

- Use *** time *** before docker build to get real time      taken to build the image.