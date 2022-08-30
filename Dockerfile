FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

CMD [ "/start.sh" ]
