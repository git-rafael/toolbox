FROM archlinux

ENV FS_ROOT /usr/local

COPY layers/ops ${FS_ROOT}
RUN packagectl pull ops

COPY layers/ops-data ${FS_ROOT}
RUN packagectl pull ops-data

COPY layers/ops-systems ${FS_ROOT}
RUN packagectl pull ops-systems

COPY layers/dev ${FS_ROOT}
RUN packagectl pull dev

COPY layers/dev-data ${FS_ROOT}
RUN packagectl pull dev-data

COPY layers/dev-security ${FS_ROOT}
RUN packagectl pull dev-security

COPY layers/dev-systems ${FS_ROOT}
RUN packagectl pull dev-systems
