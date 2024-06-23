FROM python:3.7
RUN pip install lightgbm pandas numpy scikit-learn google-cloud-aiplatform protobuf==3.20.3 google-cloud-storage
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py", "8080"]
