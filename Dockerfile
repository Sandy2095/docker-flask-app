FROM alpine:3.5

RUN apk add --update py2-pip

COPY requirements.txt /docker_apps/webapps
RUN pip install --no-cache-dir -r /docker_apps/webapps/requirements.txt

COPY app.py /docker_apps/webapps
COPY templates/index.html /docker_apps/webapps/templates

EXPOSE 5000

CMD['python', '/docker_apps/webapps/app.py']