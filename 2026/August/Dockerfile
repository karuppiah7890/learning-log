# For Triton

FROM nvcr.io/nvidia/tritonserver:24.08-py3

RUN pip install --no-cache-dir torch --index-url https://download.pytorch.org/whl/cu124
RUN pip install --no-cache-dir \
    transformers \
    numpy

COPY serve /usr/bin/serve
RUN chmod +x /usr/bin/serve

ENTRYPOINT ["/usr/bin/serve"]
