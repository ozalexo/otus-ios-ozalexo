
# Some info

   * Tried to use struct and class as metatypes
   * Is it OK?
   ```
   struct TestStruct {
      var i: Int
      var s: String
   }
   var metaStructType = TestStruct.self // __lldb_expr_13.TestStruct.Type
   TestStruct.self // __lldb_expr_13.TestStruct.Type
   ```