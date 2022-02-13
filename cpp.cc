#include <cstdlib>
#include <iostream>
#include <source_location>

[[noreturn]]
void error(auto const& arg, std::source_location loc = std::source_location::current())
{
	std::cerr << loc.file_name() << ':' << loc.line() << ':' << loc.column() 
		<< ": " << arg << std::endl;
	std::exit(EXIT_FAILURE);
}

int main()
{
	error("program was not implemented yet");
}