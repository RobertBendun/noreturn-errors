const std = @import("std");

fn reportError(arg : anytype) noreturn {
  const stderr = std.io.getStdErr().writer();
  _ = stderr.print("error: {s}\n", .{ arg }) catch .{};
  std.os.exit(1);
}

pub fn main() void {
  reportError("main was not implemented yet");
}