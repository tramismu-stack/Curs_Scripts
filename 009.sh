#!/bin/bash

#if [[ "${1}" = "Start" ]]
#then
#    echo "Starting..."
#elif [[ "${1}" = "Stop" ]]
#then
#    echo "Stopping"   
#elif [[ "${1}" = "Status" ]]
#then
#    echo "The status is.."
#else 
#    echo "Enter a valid option..."
#fi

case "${1}" in
    start|Start)
        echo "Starting..."
        ;;
    stop|Stop)
        echo "Stopping..."
        ;;
    status|Status)
        echo "The status is..."
        ;;
    *)
        echo "Enter a valid option"
        ;;
esac