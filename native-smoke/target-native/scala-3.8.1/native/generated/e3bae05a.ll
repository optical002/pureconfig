declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM27fastparse.SharedPackageDefsG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [18 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 18, i32 2, [18 x i16] [ i16 102, i16 97, i16 115, i16 116, i16 112, i16 97, i16 114, i16 115, i16 101, i16 46, i16 112, i16 97, i16 99, i16 107, i16 97, i16 103, i16 101, i16 36 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 18, i32 -1594061611 }
@"_SM7__constG1-3" = private unnamed_addr constant [2 x i32] [ i32 8, i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147480512, ptr null } ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM27fastparse.SharedPackageDefsG4type" = external global { ptr, i32, i32, ptr, ptr }
@"__modules" = external global [508 x ptr]
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM21fastparse.ParsingRun$G8instance" = external global { ptr }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM18fastparse.package$G4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 475, i32 1, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 16, i32 475, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define i32 @"_SM18fastparse.package$D20CharsWhile$default$2iEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret i32 1
}

define dereferenceable_or_null(16) ptr @"_SM18fastparse.package$G4load"() noinline personality ptr @scalanative_personality {
_1.0:
  %_4 = getelementptr ptr, ptr @"__modules", i32 111
  %_5 = load ptr, ptr %_4, !dereferenceable_or_null !{i64 16}
  %_6 = icmp ne ptr %_5, null
  br i1 %_6, label %_2.0, label %_3.0
_2.0:
  ret ptr %_5
_3.0:
  %_7 = call dereferenceable_or_null(16) ptr @"scalanative_GC_alloc_small"(ptr @"_SM18fastparse.package$G4type", i64 16)
  store ptr %_7, ptr%_4, align 8
  call void @"_SM18fastparse.package$RE"(ptr dereferenceable_or_null(16) %_7)
  ret ptr %_7
}

define void @"_SM18fastparse.package$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000001 = call dereferenceable_or_null(16) ptr @"_SM18fastparse.package$G4load"()
  %_2000005 = getelementptr { { ptr }, ptr }, { { ptr }, ptr }* %_2000001, i32 0, i32 1
  store ptr @"_SM21fastparse.ParsingRun$G8instance", ptr%_2000005, align 8
  ret void
}