event zeek_init()
	{
	local connfilter : Log::Filter =
		[
		$name = "sqlite",
		$path = "/var/db/conn",
		$config = table(["tablename"]="conn"),
		$writer = Log::WRITER_SQLITE
		];

	Log::add_filter(Conn::LOG, connfilter);
	}
