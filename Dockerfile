FROM python:3.6-alpine

COPY requirements.txt /root/
RUN pip install -r /root/requirements.txt

VOLUME "/root/bowser"
WORKDIR "/root/bowser"

ENTRYPOINT ["scripts/entrypoint.sh"]
CMD ["bowser-bot"]
