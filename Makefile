Executables=c cpp csharp.exe dlang go haskell rust zig

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

%: %.hs
	ghc $<

%.exe: %.cs
	mcs $<

clean:
	rm -f $(Executables) *.o *.hi
