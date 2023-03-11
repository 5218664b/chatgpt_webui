FROM nyjaqe6a.mirror.aliyuncs.com/library/python:3.8.2
#FROM nyjaqe6a.mirror.aliyuncs.com/library/python:3.8.2-alpine
#FROM nyjaqe6a.mirror.aliyuncs.com/library/python:3.8-alpine
#FROM python:3.12-rc-bullseye
ADD . /app
WORKDIR /app
#RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 7860

CMD ["python", "app.py"]
# docker run -p 7860:7860 -d -it chatgpt_webui