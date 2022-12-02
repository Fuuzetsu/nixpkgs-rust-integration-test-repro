Compare

```shell
[nix-develop]$ cargo test
   Compiling nixpkgs-rust-integration-test-repro v0.1.0 (/home/shana/programming/nixpkgs-rust-integration-test-repro)
    Finished test [unoptimized + debuginfo] target(s) in 0.25s
     Running unittests src/main.rs (target/debug/deps/nixpkgs_rust_integration_test_repro-0bb22c133cbd1097)

running 0 tests

test result: ok. 0 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s

     Running tests/foo.rs (target/debug/deps/foo-c78e7b31b7091e83)

running 1 test
test check_module_name ... ok

test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s
```

vs

```console
[nix-develop]$ $(nix-build  -I nixpkgs=/home/shana/programming/nixpkgs --no-out-link)/tests/tests_foo 

running 1 test
test check_module_name ... FAILED

failures:

---- check_module_name stdout ----
thread 'check_module_name' panicked at 'assertion failed: `(left == right)`
  left: `"tests_foo"`,
 right: `"foo"`', tests/foo.rs:3:5
note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace


failures:
    check_module_name

test result: FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s
```