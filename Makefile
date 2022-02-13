Executables=c cpp dlang go rust zig

all: $(Executables)

%: %.d
	dmd $<

%: %.c
	cc -Wall -Wextra -o $@ $< -O2

%: %.cc
	c++ -std=c++20 -Wall -Wextra -o $@ $< -O2

%: %.rs
	rustc $<

%: %.zig
	zig build-exe $<

%: %.go
	go build $<

clean:
	rm -f $(Executables) *.o
