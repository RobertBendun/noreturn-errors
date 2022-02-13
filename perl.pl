use strict;
use utf8;
use warnings;

sub report_error {
	my ($package, $file, $column) = caller;
	print STDERR "$file:$column: error: @_";
}

report_error("main was not implemented yet");
