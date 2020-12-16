FROM webxiaxia/ordering-base

COPY requirements.txt /tmp/requirements.txt
COPY idict-0.21.0-py2.py3-none-any.whl /tmp/idict-0.21.0-py2.py3-none-any.whl

RUN pip2 install /tmp/idict-0.21.0-py2.py3-none-any.whl
RUN pip2 install -r /tmp/requirements.txt

RUN pip install phonenumberslite==8.12.5 alipay-sdk-python==3.3.398 bson==0.5.10
RUN pip uninstall -y pycryptodome && pip install pycryptodome

RUN pip install M2Crypto==0.36.0

RUN pip install api2pdf

# timezone
RUN cp /usr/share/zoneinfo/Australia/Melbourne /etc/localtime
