    ui = true
    data_dir = "/consul/data"
    log_level = "INFO"
    server = true
    datacenter = "dc1"
    bootstrap_expect = 3
    client_addr = "0.0.0.0"
    retry_join = ["consul-0.consul", "consul-1.consul", "consul-2.consul", "consul-3.consul", "consul-4.consul", "consul-5.consul"]