declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [18 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 18, i32 2, [18 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 105, i16 111, i16 46, i16 65, i16 110, i16 115, i16 105, i16 67, i16 111, i16 108, i16 111, i16 114 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 18, i32 -1350845792 }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM18scala.io.AnsiColorG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147479072, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }

define void @"_SM18scala.io.AnsiColorD6$init$uEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret void
}