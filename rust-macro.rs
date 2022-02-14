macro_rules! error {
    ($msg:expr) => {
        eprintln!("{}:{}:{}: error: {}", file!(), line!(), column!(), $msg);
        std::process::exit(1);
    };
}

fn main() {
    error!("main was not implemented yet");
}
