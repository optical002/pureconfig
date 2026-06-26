declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [18 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 18, i32 2, [18 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 121, i16 115, i16 46, i16 112, i16 97, i16 99, i16 107, i16 97, i16 103, i16 101, i16 36 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 18, i32 -1282096569 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare void @"_SM16java.lang.SystemD4exitiuEo"(i32) inlinehint

declare ptr @"scalanative_throw"(ptr)

declare void @"_SM35scala.scalanative.runtime.ThrowableRzE"(ptr, i1) noinline

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM19java.lang.ThrowableG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }
@"_SM18scala.sys.package$G4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1376, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 8, i32 1376, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM18scala.sys.package$G8instance" = hidden global { ptr } { ptr @"_SM18scala.sys.package$G4type" }

define ptr @"_SM18scala.sys.package$D4exitinEO"(ptr %_1, i32 %_2) personality ptr @scalanative_personality {
_3000000.0:
  call void @"_SM16java.lang.SystemD4exitiuEo"(i32 %_2)
  %_6000001 = call dereferenceable_or_null(72) ptr @"scalanative_GC_alloc_small"(ptr @"_SM19java.lang.ThrowableG4type", i64 72)
  %_6000006 = getelementptr { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1 }, { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1 }* %_6000001, i32 0, i32 8
  %_6000007 = zext i1 true to i8
  store i8 %_6000007, ptr%_6000006, align 1
  call void @"_SM35scala.scalanative.runtime.ThrowableRzE"(ptr nonnull dereferenceable(72) %_6000001, i1 true)
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(72) %_6000001)
  unreachable
}

define void @"_SM18scala.sys.package$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret void
}