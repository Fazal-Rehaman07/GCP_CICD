FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install gunicorn
RUN pip install -r requirements.txt
ENV PORT=8080
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app

#CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]