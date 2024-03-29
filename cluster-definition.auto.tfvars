cluster_definition = {
    cx-demo1 = {
        worker_size = "small"
        worker_count = 3
        master_count = 1
        load_balancers = 1
        cluster_action = "Unassign"
        ip_starting_address = "10.113.89.238"
        ip_pool_size = "6"
        ip_netmask = "255.255.255.0"
        ip_gateway = "10.113.89.254"
    },
    cx-demo2 = {
        # IKS Cluster Information
        worker_size = "small"
        worker_count = 2
        master_count = 1
        load_balancers = 1
        cluster_action = "Unassign"

        # IP Pool Definition
        ip_starting_address = "10.113.89.244"
        ip_pool_size = "6"
        ip_netmask = "255.255.255.0"
        ip_gateway = "10.113.89.254"
    }
}