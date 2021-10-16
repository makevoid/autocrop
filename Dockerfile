FROM python:3.9-bullseye
# TODO: try python 3.11

RUN apt update -y
RUN apt install -y libopencv-dev

RUN pip install --upgrade pip

RUN pip install autocrop

CMD autocrop -i ./data/input -o ./data/output -r ./data/reject -w 1024 -H 1024
