declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [18 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 18, i32 2, [18 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 99, i16 97, i16 112, i16 115, i16 46, i16 117, i16 110, i16 115, i16 97, i16 102, i16 101, i16 36 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 18, i32 -909879079 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM18scala.caps.unsafe$G4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1125, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 8, i32 1125, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM18scala.caps.unsafe$G8instance" = hidden global { ptr } { ptr @"_SM18scala.caps.unsafe$G4type" }

define dereferenceable_or_null(8) ptr @"_SM18scala.caps.unsafe$D16unsafeAssumePureL16java.lang.ObjectL16java.lang.ObjectEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  ret ptr %_2
}

define dereferenceable_or_null(8) ptr @"_SM18scala.caps.unsafe$D17unsafeDiscardUsesL16java.lang.ObjectL16java.lang.ObjectEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  ret ptr %_2
}

define void @"_SM18scala.caps.unsafe$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret void
}