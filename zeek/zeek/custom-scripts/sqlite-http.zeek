event zeek_init()
        {
        local httpfilter : Log::Filter =
                [ 
                $name = "sqlite",
                $path = "/var/db/http",
                $config = table(["tablename"]="http"),
                $writer = Log::WRITER_SQLITE
                ];

        Log::add_filter(HTTP::LOG, httpfilter);
        }

