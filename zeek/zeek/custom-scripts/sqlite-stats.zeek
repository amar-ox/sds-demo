event zeek_init()
        {
        local statsfilter : Log::Filter =
                [ 
                $name = "sqlite",
                $path = "/var/db/stats",
                $config = table(["tablename"]="stats"),
                $writer = Log::WRITER_SQLITE
                ];

        Log::add_filter(Stats::LOG, statsfilter);
        }

