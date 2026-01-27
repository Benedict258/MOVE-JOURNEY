module hello_benedict::hello_benedict_tests;

use hello_benedict::hello_benedict::say_hello;
use std::debug::print;

#[error(code = 0)]
const ENotImplemented: vector<u8> = b"Not Implemented";

#[test]
fun test_hello_benedict() {
    let hello = say_hello();
    let expected = b"Hello, Benedict!";
    assert!(hello == expected, 1);
}

#[test, expected_failure(abort_code = ::hello_benedict::hello_benedict_tests::ENotImplemented)]
fun test_hello_benedict_fail() {
    abort ENotImplemented
}
