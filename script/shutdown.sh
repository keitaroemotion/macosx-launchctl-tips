#!/bin/bash
function shutdown()
{
    loghive --shutdown
    exit 0
}

function startup()
{
    tail -f /dev/null &
    wait $!
}

trap shutdown SIGTERM
trap shutdown SIGKILL

startup;
