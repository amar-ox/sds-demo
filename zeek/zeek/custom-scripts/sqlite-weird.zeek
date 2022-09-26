event zeek_init()
	{
	local weirdfilter : Log::Filter =
		[
		$name = "sqlite",
		$path = "/var/db/weird",
		$config = table(["tablename"]="weird"),
		$writer = Log::WRITER_SQLITE
		];

	Log::add_filter(Weird::LOG, weirdfilter);
	}
