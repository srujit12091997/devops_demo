FROM python:3.12-bullseye
WORKDIR /myapp
COPY . /myapp/
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]

FROM nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
