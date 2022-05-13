# syntax=docker/dockerfile:1

# 0. Use Image python:3.8-slim-buster
FROM python:3.8-slim-buster

# 1. Set working dir 'app'
WORKDIR /app

# 2. Requirements for PIP3 install
COPY req.txt req.txt

# 3. install needed modules (from requirements file)
RUN pip3 install -r req.txt

# 4. copy rest of the files
COPY . .

# 5. run
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]