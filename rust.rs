#[track_caller]
fn error<T : std::fmt::Display>(msg: T) -> ! {
	let l = std::panic::Location::caller();
	eprintln!("{}:{}:{}: error: {}", l.file(), l.line(), l.column(), msg);
	std::process::exit(1);
}

fn main() {
	error("main was not implemented yet");
}