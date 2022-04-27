# start by pulling the python image
FROM python:3.8-alpine
RUN apk update
RUN apk add git

RUN git clone git@github.com:danjphill/TeamRedProject2.git
WORKDIR TeamRedProject2

RUN pip install -r requirements.txt


ENTRYPOINT [ "python3" ]

CMD ["app.py" ]
