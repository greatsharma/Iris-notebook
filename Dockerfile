FROM python:3.6.3-slim

LABEL maintainer = "Gaurav Sharma <greatsharma04@gmail.com>"\
      description = "An all-in-one docker container containing an iris jupyter notebook,\
                     explaining and visualising iris data"

WORKDIR /app

COPY DockerFiles/kvp/iris-notebook/ /app

RUN pip --no-cache-dir install numpy pandas matplotlib seaborn sklearn jupyter

# expose port 8888 available to the world outside the docker container
EXPOSE  8888

CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

