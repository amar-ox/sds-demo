event zeek_init()
	{
	local dhcpfilter : Log::Filter =
		[
		$name = "sqlite",
		$path = "/var/db/dhcp",
		$config = table(["tablename"]="dhcp"),
		$writer = Log::WRITER_SQLITE
		];

	Log::add_filter(DHCP::LOG, dhcpfilter);
	}
