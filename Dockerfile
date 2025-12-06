# 1. Base image
FROM python:3.9-slim

# 2. move app into container
WORKDIR /app
COPY . .

# 3. Install dependencies
RUN apt-get update && apt-get install -y figlet
RUN pip install -r requirements.txt

# 4. run the python app
CMD ["python", "app.py"]