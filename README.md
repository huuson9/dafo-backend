# dafo-backend

## Set up môi trường ảo - virtual environment (Chạy 1 lần ban đầu):

python -m venv env

## Khởi động môi trường ảo - Virtual Environment:
env/Scripts/activate

## Cài đặt các thư viện cần có

pip install -r requirements.txt

## Tạo file .env như mẫu env.example

## Tạo database ứng với .env

## Chạy project

cd .\ecommerce\
python manage.py runserver

## Tạo superuser để vào trang admin
python manage.py superadmin
Xong chạy: python manage.py runserver
thêm /admin trên localhost để vào admin
