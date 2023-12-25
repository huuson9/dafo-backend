FROM python:3.9

WORKDIR /app
COPY requirements.txt /app
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /app 
# CMD ["python3", "/app/ecommerce/manage.py", "runserver", "0.0.0.0:8000"]
CMD ["ls"]

EXPOSE 8000
