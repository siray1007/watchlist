FROM python:3.10-slim
# con
WORKDIR /app
# RUN python3 -m venv env
# RUN source env/bin/activate
COPY requirements.txt .
RUN pip install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
COPY . .
RUN flask forge
EXPOSE 5000
# CMD ["flask","run","--host=0.0.0.0"]
ENTRYPOINT ["flask","run","--host=0.0.0.0"]