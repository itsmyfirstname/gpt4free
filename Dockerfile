FROM python:3.11.4-bullseye

ARG app_path="/gpt4free"
RUN mkdir ${app_path}
WORKDIR ${app_path}

COPY requirements.txt ${app_path}
RUN pip install pipenv \
    && pipenv install -r requirements.txt

# docker build -t gpt4free:local .
# docker run -it -v $(PWD):/gpt4free gpt4free:local
# pipenv shell 