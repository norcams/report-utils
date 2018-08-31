payload = {'ip': get_ipaddress(),
           'name': socket.gethostname(),
           'uptime': get_uptime(),
           'checksum': checksum_file(__file__) }

