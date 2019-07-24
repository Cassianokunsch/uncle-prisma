FROM prismagraphql/prisma:1.34
COPY ./prerun_hook.sh /app/prerun_hook.sh

RUN /bin/bash -c 'chmod +x /app/prerun_hook.sh'
RUN /bin/bash -c 'chmod +x /app/start.sh'

CMD app/start.sh/