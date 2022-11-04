FROM python:3.8

WORKDIR /CRUD_in_DRF

COPY . /CRUD_in_DRF

run pip install -r /CRUD_in_DRF/requirements.txt

ENV SECRET_KEY django-insecure-nw^y+m^wmxza1asgk+)!ua2qx9)g+#v=6%76-9i8i(6eqiw94j
ENV ALLOWED_HOSTS localhost
ENV DEBUG 1

RUN python manage.py migrate

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stocks_products.wsgi"]