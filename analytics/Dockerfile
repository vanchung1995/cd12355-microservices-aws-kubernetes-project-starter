# FROM python:3.9-slim
FROM public.ecr.aws/sam/build-python3.9:1.125.0-20240926224225
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
RUN ls -la

EXPOSE 8080

CMD ["python", "app.py"]
