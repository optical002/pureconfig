declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM20java.io.SerializableG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, [25 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 25, i32 2, [25 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 109, i16 97, i16 116, i16 99, i16 104, i16 105, i16 110, i16 103, i16 46, i16 82, i16 101, i16 103, i16 101, i16 120 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-1", i32 0, i32 25, i32 1990785466 }
@"_SM7__constG1-3" = private unnamed_addr constant [3 x i32] [ i32 16, i32 24, i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147483621, ptr null } ]
@"_SM7__constG1-5" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM15scala.Function1G4type" ]
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, [35 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 35, i32 2, [35 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 109, i16 97, i16 116, i16 99, i16 104, i16 105, i16 110, i16 103, i16 46, i16 82, i16 101, i16 103, i16 101, i16 120, i16 36, i16 36, i16 76, i16 97, i16 109, i16 98, i16 100, i16 97, i16 36, i16 49 ] }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-6", i32 0, i32 35, i32 -1169357714 }
@"_SM7__constG1-8" = private unnamed_addr constant [2 x i32] [ i32 16, i32 -1 ]
@"_SM7__constG1-9" = private unnamed_addr constant [4 x ptr] [ ptr @"_SM35scala.util.matching.Regex$$Lambda$1D5applyL16java.lang.ObjectL16java.lang.ObjectEO", ptr @"_SM15scala.Function1D13apply$mcZI$spizEO", ptr @"_SM15scala.Function1D13apply$mcII$spiiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ]
@"_SM7__constG2-10" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147483646, ptr @"_SM7__constG1-9" } ]
@"_SM16java.lang.StringG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM20java.io.SerializableG4type" = external global { ptr, ptr, i32, i32, ptr, ptr }

declare i32 @"_SM23java.util.regex.MatcherD10groupCountiEO"(ptr)

declare i1 @"_SM23java.util.regex.MatcherD7matcheszEO"(ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }

declare dereferenceable_or_null(40) ptr @"_SM23java.util.regex.MatcherD5groupiL16java.lang.StringEO"(ptr, i32)
@"_SM15scala.Function1G4type" = external global { ptr, ptr, i32, i32, ptr, ptr }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare nonnull dereferenceable(32) ptr @"_SM14scala.package$D4ListL32scala.collection.immutable.List$EO"(ptr) inlinehint

declare nonnull dereferenceable(48) ptr @"_SM23java.util.regex.PatternD7matcherL22java.lang.CharSequenceL23java.util.regex.MatcherEO"(ptr, ptr)

declare dereferenceable_or_null(40) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM11scala.Some$G8instance" = external global { ptr, ptr }

declare dereferenceable_or_null(16) ptr @"_SM11scala.None$G4load"()

declare i1 @"_SM15scala.Function1D13apply$mcZI$spizEO"(ptr, i32)

declare i32 @"_SM27scala.runtime.BoxesRunTime$D10unboxToIntL16java.lang.ObjectiEO"(ptr, ptr) inlinehint
@"_SM16java.lang.ObjectG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare dereferenceable_or_null(40) ptr @"_SM23java.util.regex.PatternD7patternL16java.lang.StringEO"(ptr)

declare nonnull dereferenceable(24) ptr @"_SM11scala.Some$D5applyL16java.lang.ObjectL10scala.SomeEO"(ptr, ptr)
@"_SM14scala.package$G8instance" = external global { ptr, ptr }

declare i32 @"_SM15scala.Function1D13apply$mcII$spiiEO"(ptr, i32)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)

declare dereferenceable_or_null(16) ptr @"_SM32scala.collection.immutable.List$D8tabulateiL15scala.Function1L23scala.collection.SeqOpsEO"(ptr, i32, ptr)
@"_SM25scala.util.matching.RegexG4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 965, i32 1, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 32, i32 965, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM25scala.util.matching.RegexD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM35scala.util.matching.Regex$$Lambda$1G4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1117, i32 1, ptr @"_SM7__constG1-5", ptr @"_SM7__constG1-7" }, i32 24, i32 1117, ptr @"_SM7__constG1-8", i32 0, ptr @"_SM7__constG2-10", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define i1 @"_SM25scala.util.matching.RegexD10runMatcherL23java.util.regex.MatcherzEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000001 = call i1 @"_SM23java.util.regex.MatcherD7matcheszEO"(ptr dereferenceable_or_null(48) %_2)
  ret i1 %_3000001
}

define dereferenceable_or_null(16) ptr @"_SM25scala.util.matching.RegexD10unapplySeqL22java.lang.CharSequenceL12scala.OptionEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_9000004 = icmp ne ptr %_1, null
  br i1 %_9000004, label %_9000002.0, label %_9000003.0
_9000002.0:
  %_9000005 = getelementptr { { ptr, ptr }, ptr, ptr }, { { ptr, ptr }, ptr, ptr }* %_1, i32 0, i32 1
  %_4000001 = load atomic ptr, ptr %_9000005 unordered, align 8
  %_3000001 = call dereferenceable_or_null(48) ptr @"_SM23java.util.regex.PatternD7matcherL22java.lang.CharSequenceL23java.util.regex.MatcherEO"(ptr dereferenceable_or_null(40) %_4000001, ptr dereferenceable_or_null(16) %_2)
  %_3000002 = call i1 @"_SM25scala.util.matching.RegexD10runMatcherL23java.util.regex.MatcherzEO"(ptr dereferenceable_or_null(32) %_1, ptr dereferenceable_or_null(48) %_3000001)
  br i1 %_3000002, label %_5000000.0, label %_6000000.0
_5000000.0:
  %_5000003 = call dereferenceable_or_null(32) ptr @"_SM14scala.package$D4ListL32scala.collection.immutable.List$EO"(ptr nonnull dereferenceable(16) @"_SM14scala.package$G8instance")
  %_5000004 = call i32 @"_SM23java.util.regex.MatcherD10groupCountiEO"(ptr dereferenceable_or_null(48) %_3000001)
  %_5000006 = call dereferenceable_or_null(24) ptr @"scalanative_GC_alloc_small"(ptr @"_SM35scala.util.matching.Regex$$Lambda$1G4type", i64 24)
  %_9000007 = getelementptr { { ptr, ptr }, ptr }, { { ptr, ptr }, ptr }* %_5000006, i32 0, i32 1
  store atomic ptr %_3000001, ptr%_9000007 unordered, align 8
  %_5000008 = call dereferenceable_or_null(16) ptr @"_SM32scala.collection.immutable.List$D8tabulateiL15scala.Function1L23scala.collection.SeqOpsEO"(ptr dereferenceable_or_null(32) %_5000003, i32 %_5000004, ptr nonnull dereferenceable(24) %_5000006)
  %_5000009 = call dereferenceable_or_null(24) ptr @"_SM11scala.Some$D5applyL16java.lang.ObjectL10scala.SomeEO"(ptr nonnull dereferenceable(16) @"_SM11scala.Some$G8instance", ptr dereferenceable_or_null(16) %_5000008)
  br label %_9000000.0
_6000000.0:
  %_6000001 = call dereferenceable_or_null(16) ptr @"_SM11scala.None$G4load"()
  br label %_9000000.0
_9000000.0:
  %_9000001 = phi ptr [%_6000001, %_6000000.0], [%_5000009, %_5000000.0]
  ret ptr %_9000001
_9000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(40) ptr @"_SM25scala.util.matching.RegexD21unapplySeq$$anonfun$1L23java.util.regex.MatcheriL16java.lang.StringEpT25scala.util.matching.Regex"(ptr %_1, i32 %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000002 = add i32 %_2, 1
  %_3000003 = call dereferenceable_or_null(40) ptr @"_SM23java.util.regex.MatcherD5groupiL16java.lang.StringEO"(ptr dereferenceable_or_null(48) %_1, i32 %_3000002)
  ret ptr %_3000003
}

define dereferenceable_or_null(40) ptr @"_SM25scala.util.matching.RegexD5regexL16java.lang.StringEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000005 = getelementptr { { ptr, ptr }, ptr, ptr }, { { ptr, ptr }, ptr, ptr }* %_1, i32 0, i32 1
  %_3000001 = load atomic ptr, ptr %_3000005 unordered, align 8
  %_2000001 = call dereferenceable_or_null(40) ptr @"_SM23java.util.regex.PatternD7patternL16java.lang.StringEO"(ptr dereferenceable_or_null(40) %_3000001)
  ret ptr %_2000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(40) ptr @"_SM25scala.util.matching.RegexD8toStringL16java.lang.StringEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000004 = icmp ne ptr %_1, null
  br i1 %_2000004, label %_2000002.0, label %_2000003.0
_2000002.0:
  %_2000001 = call dereferenceable_or_null(40) ptr @"_SM25scala.util.matching.RegexD5regexL16java.lang.StringEO"(ptr dereferenceable_or_null(32) %_1)
  ret ptr %_2000001
_2000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(40) ptr @"_SM35scala.util.matching.Regex$$Lambda$1D5applyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_4000005 = icmp ne ptr %_1, null
  br i1 %_4000005, label %_4000003.0, label %_4000004.0
_4000003.0:
  %_4000006 = getelementptr { { ptr, ptr }, ptr }, { { ptr, ptr }, ptr }* %_1, i32 0, i32 1
  %_3000001 = load atomic ptr, ptr %_4000006 unordered, align 8
  %_4000001 = call i32 @"_SM27scala.runtime.BoxesRunTime$D10unboxToIntL16java.lang.ObjectiEO"(ptr null, ptr dereferenceable_or_null(16) %_2)
  %_4000002 = call dereferenceable_or_null(40) ptr @"_SM25scala.util.matching.RegexD21unapplySeq$$anonfun$1L23java.util.regex.MatcheriL16java.lang.StringEpT25scala.util.matching.Regex"(ptr dereferenceable_or_null(48) %_3000001, i32 %_4000001)
  ret ptr %_4000002
_4000004.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}