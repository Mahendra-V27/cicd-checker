FROM python:3.9-slim-buster

WORKDIR D:\BackUp2022\OneDrive\MySapBK2023\Advance Analytics\code\MLOps\AWS\GitHub\DSML_Minions_CICD

COPY requirements.txt ./
RUN python3 -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python","-m", "flask", "--app", "loan_app", "run", "--host=0.0.0.0"]