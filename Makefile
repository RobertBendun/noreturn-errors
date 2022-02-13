Executables=cpp dlang go rust

all: $(Executables)

%: %.d
	dmd $<

%: %.cc
	g++ -std=c++20 -Wall -Wextra -o $@ $< -O2

%: %.rs
	rustc $<

%: %.zig
	zig build-exe $<

%: %.go
	go build $<

clean:
	rm -f $(Executables) *.o
