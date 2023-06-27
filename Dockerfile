FROM python:latest

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN apt-get update && apt-get install -y libpq-dev build-essential
RUN pip install --no-cache-dir pip==23.1.2


RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-u", "Main/main.py"]