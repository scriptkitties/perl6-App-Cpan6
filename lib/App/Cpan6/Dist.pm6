#! /usr/bin/env false

use v6;

use App::Cpan6::Config;
use Config;

unit module App::Cpan6::Dist;

multi sub get-dist-path(Str $name, Str $version, Config :$config --> Str) is export
{
	say $config;
	$config.get("cpan6.distdir").IO.add("{$name}-{$version}.tar.gz").absolute;
}

multi sub get-dist-path() is export
{
	get-dist-path(config => get-config());
}
