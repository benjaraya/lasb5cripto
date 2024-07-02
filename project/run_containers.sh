#!/bin/bash

# Construir las imágenes
docker build -t c1_image ./C1
docker build -t c2_image ./C2
docker build -t c3_image ./C3
docker build -t c4_image ./C4

# Correr los contenedores
docker run -d --name C1 -p 2201:22 c1_image
docker run -d --name C2 -p 2202:22 c2_image
docker run -d --name C3 -p 2203:22 c3_image
docker run -d --name C4 -p 2204:22 c4_image

# Confirmar que los contenedores están corriendo
docker ps

