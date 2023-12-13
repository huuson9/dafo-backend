# Sử dụng một hình ảnh cơ sở Python
FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "ecommerce/manage.py", "runserver", "0.0.0.0:8000"]
