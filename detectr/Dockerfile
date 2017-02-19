FROM python:3.5

#ADD . ../detectr

# Set env variables used in this Dockerfile (add a unique prefix, such as DOCKYARD)
# Local directory with project source
ENV DOCKYARD_SRC=detectr
# Directory in container for all project files
ENV DOCKYARD_SRVHOME=/srv
# Directory in container for project source files
ENV DOCKYARD_SRVPROJ=/srv/${DOCKYARD_SRC}

RUN mkdir -p $DOCKYARD_SRVPROJ
WORKDIR $DOCKYARD_SRVPROJ
RUN echo "will do ls then pwd"
RUN echo `ls ; pwd`
VOLUME .:$DOCKYARD_SRVPROJ
ADD . $DOCKYARD_SRVPROJ
RUN echo "will do ls then pwd"
RUN echo `ls ; pwd`
RUN pip install -r requirements.txt

EXPOSE 8081


