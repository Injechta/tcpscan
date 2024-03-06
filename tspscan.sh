#!bin/bash
ip=$1

function  tcpscan ()

{
        ip=$1
        for port in $(seq 1 30);
        do
                timeout 1 bash -c "</dev/tcp/$ip/$port && echo Le Port $port est ouvert || echo Le Port $port est fermé > /dev/null" 2>/dev/null || echo Connection timeout > /dev/null
done

}
tcpscan $ip
