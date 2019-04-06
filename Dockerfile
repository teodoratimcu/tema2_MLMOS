
FROM garland/butterfly

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install python-pip -y

RUN python -m pip install -U pip setuptools
RUN pip install git+https://github.com/BiancaBulai/MLMOStem2.git --no-cache-dir

CMD echo "Ready installing"

EXPOSE 57575
CMD ["butterfly.server.py", "--host=0.0.0.0", "--port=57575", "--cmd=python /usr/local/bin/pywumpus.py", "--unsecure"]
ENTRYPOINT ["docker/run.sh"]
