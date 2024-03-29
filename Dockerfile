FROM python:3.11.7 as base
WORKDIR /usr/app
COPY ./src .
EXPOSE 3978 3978

FROM base as dev
RUN pip install -r requirements.txt
CMD [ "python", "-m", "app" ]

FROM base as release
RUN pip install -r requirements.prd.txt
CMD [ "gunicorn", "--bind", "0.0.0.0:3978:3978", "--worker-class", "aiohttp.worker.GunicornWebWorker", "--timeout", "600", "app:APP" ]
