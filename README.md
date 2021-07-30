# zig-webview

Integrating [webview](https://github.com/webview/webview) into a Zig application.

```sh
# Build Zig code
zig build

# Build and run Zig code
zig build run

# Build C++ example with Zig
zig c++ -std=c++11 webview/main.cpp -framework WebKit -o webview-main
# Build C and C++ examples with Clang
clang++ -std=c++11 webview/main.cpp -framework WebKit -o webview-main
clang++ -std=c++11 webview/main.c -framework WebKit -o webview-main
```
