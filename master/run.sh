#!/bin/sh -e

tail -F ${HBASE_LOG_DIR}/hbase--master-$(hostname).log &
${HBASE_PREFIX}/bin/hbase-daemon.sh --config "${HBASE_CONFIG_DIR}" foreground_start master
