# setting the base-image to alpine
FROM python:3-slim

# importing the action
ADD . /action
WORKDIR /action

# installing the requirements
RUN pip install -U pip -r requirements.txt

# running the main.py file
CMD [ "python", "main.py" ]
