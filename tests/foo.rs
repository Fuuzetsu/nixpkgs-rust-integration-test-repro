#[test]
fn check_module_name() {
    assert_eq!(module_path!(), "foo")
}
