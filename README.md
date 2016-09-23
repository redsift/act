# Aerospike SSD performance test & latest hdparm

    # assuming /dev/sdb is under test
    docker run -ti --device /dev/sdb:/dev/ssd quay.io/redsift/act
    
    actprep /dev/ssd

    python /usr/local/bin/act_config_helper.py

    act actconfig.txt > ouput.txt

    python /usr/local/bin/act_latency.py -l output.txt


Compare results against https://discuss.aerospike.com/c/benchmarks/act-ssd-benchmarks    