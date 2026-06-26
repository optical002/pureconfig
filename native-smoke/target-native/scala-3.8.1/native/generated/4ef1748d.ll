declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [23 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 23, i32 2, [23 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 115, i16 101, i16 99, i16 117, i16 114, i16 105, i16 116, i16 121, i16 46, i16 80, i16 114, i16 105, i16 110, i16 99, i16 105, i16 112, i16 97, i16 108 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 23, i32 -610309588 }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM23java.security.PrincipalG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147482176, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }