#parent image
FROM python:3
#directory where the command will be executed
WORKDIR /usr/src/app
#Copy all dependancies to the container
COPY requirements.txt .
#Install all dependancies
RUN pip install --no-cache-dir -r requirements.txt
#Copy all the depo code to the container
COPY . .
#Outputs ports
EXPOSE 3002

CMD [ "python", ".index.py" ]