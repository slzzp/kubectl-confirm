#!/bin/sh

# support syntax example
# - kubectl delete namespace foobar

# kubectl location
KUBECTL=/usr/local/bin/kubectl

COMMAND=$1

case "${COMMAND}" in
  *)
    ${KUBECTL} $@
    exit
    ;;
esac

# run original command and arguments
${KUBECTL} $@
