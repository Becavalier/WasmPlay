(module
  (table 3 anyfunc)
  (func $f1 (result i32)
    i32.const 42)
  (func $f3 (result i32)
      i32.const 88)
  (func $f2 (result f32)
    f32.const 13.1)
  (elem (i32.const 0) $f1 $f2 $f3)
  (type $return_i32 (func (result i32)))
  (type $return_f32 (func (result f32)))
  (func (export "callByIndexInt") (param $i i32) (result f32)
    (call_indirect $return_i32 (get_local $i)))
  (func (export "callByIndexFloat") (param $i i32) (result f32)
    (call_indirect $return_f32 (get_local $i)))
)