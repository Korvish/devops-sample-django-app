FROM python:3.8.18-slim

WORKDIR /srv/www/app

ARG UNAME=app_user \
    GROUP=app_group \
    UID=1000 \
    GID=1000

RUN addgroup --system --gid ${GID} ${GROUP} \
    && adduser --system --no-create-home --uid ${UID} ${UNAME}

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY --chown=${UID}:${GID} . .

COPY --chmod=755 deploy/docker/entrypoint.sh /entrypoint.sh

USER ${UID}:${GID}

ENTRYPOINT [ "/entrypoint.sh" ]

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "parrotsite.wsgi:application"]