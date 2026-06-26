declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM20java.io.SerializableG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [25 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 25, i32 2, [25 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 109, i16 97, i16 116, i16 99, i16 104, i16 105, i16 110, i16 103, i16 46, i16 82, i16 101, i16 103, i16 101, i16 120 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 25, i32 1990785466 }
@"_SM7__constG1-3" = private unnamed_addr constant [3 x i32] [ i32 8, i32 16, i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147483621, ptr null } ]
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare dereferenceable_or_null(32) ptr @"_SM23java.util.regex.PatternD7patternL16java.lang.StringEO"(ptr)
@"_SM20java.io.SerializableG4type" = external global { ptr, i32, i32, ptr, ptr }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM25scala.util.matching.RegexG4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1100, i32 1, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 24, i32 1100, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM25scala.util.matching.RegexD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(32) ptr @"_SM25scala.util.matching.RegexD5regexL16java.lang.StringEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000005 = getelementptr { { ptr }, ptr, ptr }, { { ptr }, ptr, ptr }* %_1, i32 0, i32 1
  %_3000001 = load ptr, ptr %_3000005, !dereferenceable_or_null !{i64 32}
  %_2000001 = call dereferenceable_or_null(32) ptr @"_SM23java.util.regex.PatternD7patternL16java.lang.StringEO"(ptr dereferenceable_or_null(32) %_3000001)
  ret ptr %_2000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(32) ptr @"_SM25scala.util.matching.RegexD8toStringL16java.lang.StringEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000004 = icmp ne ptr %_1, null
  br i1 %_2000004, label %_2000002.0, label %_2000003.0
_2000002.0:
  %_2000001 = call dereferenceable_or_null(32) ptr @"_SM25scala.util.matching.RegexD5regexL16java.lang.StringEO"(ptr dereferenceable_or_null(24) %_1)
  ret ptr %_2000001
_2000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}