import std.stdio : writeln;
import object : noreturn;

noreturn report_error(string file = __FILE__, int line = __LINE__, A)(A arg)
{
	import core.stdc.stdlib : exit, EXIT_FAILURE;
	import std.stdio : stderr;
	stderr.writef("%s:%d: error: %s\n", file, line, arg);
	EXIT_FAILURE.exit;
}

void main()
{
	report_error("program was not implemented yet");
}
