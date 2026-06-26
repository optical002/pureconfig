declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM20java.io.SerializableG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [38 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 38, i32 2, [38 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 99, i16 111, i16 110, i16 99, i16 117, i16 114, i16 114, i16 101, i16 110, i16 116, i16 46, i16 97, i16 116, i16 111, i16 109, i16 105, i16 99, i16 46, i16 65, i16 116, i16 111, i16 109, i16 105, i16 99, i16 76, i16 111, i16 110, i16 103 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 38, i32 -968709069 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147483621, ptr null } ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.NumberG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [7 x ptr] }

declare dereferenceable_or_null(32) ptr @"_SM14java.lang.LongD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM48scala.scalanative.libc.stdatomic$AtomicLongLong$G8instance" = external global { ptr }
@"_SM20java.io.SerializableG4type" = external global { ptr, i32, i32, ptr, ptr }
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }

declare dereferenceable_or_null(16) ptr @"_SM27scala.runtime.BoxesRunTime$D9boxToLongjL14java.lang.LongEO"(ptr, i64) inlinehint

declare i64 @"_SM48scala.scalanative.libc.stdatomic$AtomicLongLong$D14load$extensionL28scala.scalanative.unsafe.PtrjEO"(ptr, ptr)

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(16) ptr @"_SM32scala.scalanative.runtime.Boxes$D8boxToPtrR_L28scala.scalanative.unsafe.PtrEO"(ptr, ptr) inlinehint
@"_SM38java.util.concurrent.atomic.AtomicLongG4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [7 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 486, i32 1, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 16, i32 486, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.NumberG4type", [7 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM38java.util.concurrent.atomic.AtomicLongD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO", ptr @"_SM38java.util.concurrent.atomic.AtomicLongD11doubleValuedEO", ptr @"_SM38java.util.concurrent.atomic.AtomicLongD8intValueiEO", ptr @"_SM38java.util.concurrent.atomic.AtomicLongD9longValuejEO", ptr @"_SM38java.util.concurrent.atomic.AtomicLongD10floatValuefEO" ] }

define float @"_SM38java.util.concurrent.atomic.AtomicLongD10floatValuefEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000006 = icmp ne ptr %_1, null
  br i1 %_2000006, label %_2000004.0, label %_2000005.0
_2000004.0:
  %_2000001 = call i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr dereferenceable_or_null(16) %_1)
  %_2000003 = sitofp i64 %_2000001 to float
  ret float %_2000003
_2000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define double @"_SM38java.util.concurrent.atomic.AtomicLongD11doubleValuedEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000006 = icmp ne ptr %_1, null
  br i1 %_2000006, label %_2000004.0, label %_2000005.0
_2000004.0:
  %_2000001 = call i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr dereferenceable_or_null(16) %_1)
  %_2000003 = sitofp i64 %_2000001 to double
  ret double %_2000003
_2000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000007 = icmp ne ptr %_1, null
  br i1 %_2000007, label %_2000005.0, label %_2000006.0
_2000005.0:
  %_2000008 = getelementptr { { ptr }, i64 }, { { ptr }, i64 }* %_1, i32 0, i32 1
  %_2000003 = call dereferenceable_or_null(16) ptr @"_SM32scala.scalanative.runtime.Boxes$D8boxToPtrR_L28scala.scalanative.unsafe.PtrEO"(ptr null, ptr %_2000008)
  %_2000004 = call i64 @"_SM48scala.scalanative.libc.stdatomic$AtomicLongLong$D14load$extensionL28scala.scalanative.unsafe.PtrjEO"(ptr nonnull dereferenceable(8) @"_SM48scala.scalanative.libc.stdatomic$AtomicLongLong$G8instance", ptr dereferenceable_or_null(16) %_2000003)
  ret i64 %_2000004
_2000006.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define i32 @"_SM38java.util.concurrent.atomic.AtomicLongD8intValueiEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000006 = icmp ne ptr %_1, null
  br i1 %_2000006, label %_2000004.0, label %_2000005.0
_2000004.0:
  %_2000001 = call i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr dereferenceable_or_null(16) %_1)
  %_2000003 = trunc i64 %_2000001 to i32
  ret i32 %_2000003
_2000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(32) ptr @"_SM38java.util.concurrent.atomic.AtomicLongD8toStringL16java.lang.StringEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000007 = icmp ne ptr %_1, null
  br i1 %_2000007, label %_2000005.0, label %_2000006.0
_2000005.0:
  %_2000001 = call i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr dereferenceable_or_null(16) %_1)
  %_2000003 = call dereferenceable_or_null(16) ptr @"_SM27scala.runtime.BoxesRunTime$D9boxToLongjL14java.lang.LongEO"(ptr null, i64 %_2000001)
  %_2000004 = call dereferenceable_or_null(32) ptr @"_SM14java.lang.LongD8toStringL16java.lang.StringEO"(ptr nonnull dereferenceable(16) %_2000003)
  ret ptr %_2000004
_2000006.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define i64 @"_SM38java.util.concurrent.atomic.AtomicLongD9longValuejEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000004 = icmp ne ptr %_1, null
  br i1 %_2000004, label %_2000002.0, label %_2000003.0
_2000002.0:
  %_2000001 = call i64 @"_SM38java.util.concurrent.atomic.AtomicLongD3getjEO"(ptr dereferenceable_or_null(16) %_1)
  ret i64 %_2000001
_2000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}