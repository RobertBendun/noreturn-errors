import inspect, sys, typing

def error(msg : str) -> typing.NoReturn:
    frame = inspect.currentframe()
    cf = inspect.getouterframes(frame, 2)[1]
    sys.stderr.write(f"{cf.filename}:{cf.lineno}: error: {msg}")
    exit(1)

error("script was not implemented yet")
