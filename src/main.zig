const std = @import("std");
const c = @cImport({
    @cDefine("WEBVIEW_HEADER", {});
    @cInclude("webview.h");
});

pub fn main() anyerror!void {
    const w = c.webview_create(0, null);
    defer c.webview_destroy(w);

    c.webview_set_title(w, "Webview Example");
    c.webview_set_size(w, 480, 320, c.WEBVIEW_HINT_NONE);
    c.webview_navigate(w, "https://en.m.wikipedia.org/wiki/Main_Page");
    c.webview_run(w);

    std.log.info("All your codebase are belong to us.", .{});
}
