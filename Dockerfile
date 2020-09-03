ARG BASE_IMAGE=jupyterhub/jupyterhub
FROM $BASE_IMAGE

RUN apt-get -y update
        
RUN apt-get -y install python3.6  python3-dev  python3-pip wget systemd sudo git qt5-default
RUN apt-get -y install libfontconfig1 mesa-common-dev libglu1-mesa-dev 
RUN pip3 install --upgrade pip
RUN apt-get -y update

COPY jupyter_config.py /srv/jupyterhub/jupyter_config.py
COPY local_deploy.sh local_deploy.sh
COPY cover.jpg ./images/image.jpg

RUN  ls && bash local_deploy.sh

#RUN ls && bash install_jupyter.sh
CMD jupyterhub