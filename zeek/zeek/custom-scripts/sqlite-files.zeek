event zeek_init()
        {
        local filesfilter : Log::Filter =
                [
                $name = "sqlite",
                $path = "/var/db/files",
                $config = table(["tablename"]="files"),
                $writer = Log::WRITER_SQLITE
                ];

        Log::add_filter(Files::LOG, filesfilter);
        }

