docker images (Debian, Java, etc.)
===================================

Usage
-----

To create the image `me/debian-jess`, execute the following command in the debian-jessy folder:

  docker build -t me/debian-jessy .

You can now push your new image to the registry:

  sudo docker push me/debian-jessy


Running the Debian Jessie image
-------------------------------

Start your image:

  sudo docker run -it me/debian-jessie /bin/bash

To start the image on docker hub:

  sudo docker run -it petervandenabeele/debian-jessie /bin/bash
