declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, [21 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 21, i32 2, [21 x i16] [ i16 115, i16 111, i16 117, i16 114, i16 99, i16 101, i16 99, i16 111, i16 100, i16 101, i16 46, i16 78, i16 97, i16 109, i16 101, i16 77, i16 97, i16 99, i16 114, i16 111, i16 115 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-1", i32 0, i32 21, i32 -1287309864 }
@"_SM16java.lang.StringG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM21sourcecode.NameMacrosG4type" = hidden global { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 -2147479680, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }