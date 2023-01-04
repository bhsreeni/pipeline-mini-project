FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY ./app /app

RUN pip install -r /app/requirements.txt

WORKDIR /app/

CMD pytest --cov-report term-missing --cov -v && flake8 --statistics
