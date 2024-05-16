import subprocess
import pathlib
import lldb

# Determine the sysroot for the active Rust interpreter
rustlib_etc = (
    pathlib.Path(subprocess.getoutput("rustc --print sysroot"))
    / "lib"
    / "rustlib"
    / "etc"
)
if not rustlib_etc.exists():
    raise RuntimeError("Unable to determine rustc sysroot")

# Load lldb_lookup.py and execute lldb_commands with the correct path
lldb.debugger.HandleCommand(
    f"""command script import "{rustlib_etc / 'lldb_lookup.py'}" """
)
lldb.debugger.HandleCommand(
    f"""command source -s 0 "{rustlib_etc / 'lldb_commands'}" """
)
