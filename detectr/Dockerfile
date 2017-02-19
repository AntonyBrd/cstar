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

VOLUME .:$DOCKYARD_SRVPROJ
ADD . $DOCKYARD_SRVPROJ

RUN pip install -r requirements.txt


#CMD ["python", "manage.py", "runserver", "0.0.0.0:8081"]
RUN python manage.py migrate
EXPOSE 8081
RUN python manage.py runserver 0.0.0.0:8081

EXPOSE 70
