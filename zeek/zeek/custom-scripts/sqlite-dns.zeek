event zeek_init()
        {
        local dnsfilter : Log::Filter =
                [
                $name = "sqlite",
                $path = "/var/db/dns",
                $config = table(["tablename"]="dns"),
                $writer = Log::WRITER_SQLITE
                ];

        Log::add_filter(DNS::LOG, dnsfilter);
        }

