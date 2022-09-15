CGO_ENABLED=1
CC="zig cc"
CXX="zig c++"

clean:
	rm -rf zig/libmain.a main

zig/libmain.a: zig/src/main.zig zig/build.zig
	cd zig && \
	zig build-lib -static src/main.zig

main: zig/libmain.a main.go
	go build -o main .
