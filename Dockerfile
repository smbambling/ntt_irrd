FROM python:3.6

MAINTAINER Steven Bambling <smbambling@gmail.com>

# Metadata
LABEL Remarks="NTT IRRD4"

RUN pip install --upgrade pip

RUN pip install irrd==4.0.8

COPY entrypoint.sh /usr/bin/

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
