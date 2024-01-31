FROM python:3.11.7 as base
WORKDIR /usr/app
COPY . .

FROM base as dev
RUN pip install -r requirements.txt


FROM base as release
RUN pip install -r requirements.prd.txt
ENTRYPOINT [ "python" ]
CMD [ "echo_bot" ]
