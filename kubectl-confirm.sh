#!/bin/sh

# support syntax
# - kubectl delete namespace foobar

# kubectl location
KUBECTL=/usr/local/bin/kubectl

COMMAND=$1

case "${COMMAND}" in
  "delete")
    shift
    RESOURCE_TYPE=$1

    case "${RESOURCE_TYPE}" in
      "namespace")
        shift
        NAME=$1
        shift

        read -r -p "To confirm deletion, type '${NAME}' and press <enter>: " CONFIRM_INPUT
        if [ "${NAME}" == "${CONFIRM_INPUT}" ]; then
          ${KUBECTL} "${COMMAND}" "${RESOURCE_TYPE}" "${NAME}" $@
        else
          echo "Cancel deletion."
        fi
        exit
        ;;

      *)
        ${KUBECTL} "${COMMAND}" $@
        exit
        ;;
    esac
    ;;

  *)
    ${KUBECTL} $@
    exit
    ;;
esac

# run original command and arguments
${KUBECTL} $@
