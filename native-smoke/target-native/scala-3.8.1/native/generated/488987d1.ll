declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [2 x ptr] [ ptr @"_SM42scala.collection.convert.AsScalaConvertersG4type", ptr @"_SM41scala.collection.convert.AsJavaConvertersG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [39 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 39, i32 2, [39 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 106, i16 100, i16 107, i16 46, i16 106, i16 97, i16 118, i16 97, i16 97, i16 112, i16 105, i16 46, i16 67, i16 111, i16 108, i16 108, i16 101, i16 99, i16 116, i16 105, i16 111, i16 110, i16 67, i16 111, i16 110, i16 118, i16 101, i16 114, i16 116, i16 101, i16 114, i16 115, i16 36 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 39, i32 -1497380872 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [2 x { i32, ptr }] [ { i32, ptr } { i32 -2147483296, ptr null }, { i32, ptr } { i32 -2147483423, ptr null } ]
@"_SM41scala.collection.convert.AsJavaConvertersG4type" = external global { ptr, i32, i32, ptr, ptr }

declare void @"_SM41scala.collection.convert.AsJavaConvertersD6$init$uEO"(ptr)
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare dereferenceable_or_null(8) ptr @"_SM41scala.collection.convert.AsJavaConvertersD6asJavaL20scala.collection.SeqL14java.util.ListEO"(ptr, ptr)
@"__modules" = external global [508 x ptr]

declare dereferenceable_or_null(16) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL18java.lang.IterableL25scala.collection.IterableEO"(ptr, ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }

declare dereferenceable_or_null(16) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL13java.util.SetL28scala.collection.mutable.SetEO"(ptr, ptr)

declare dereferenceable_or_null(16) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL14java.util.ListL31scala.collection.mutable.BufferEO"(ptr, ptr)

declare void @"_SM42scala.collection.convert.AsScalaConvertersD6$init$uEO"(ptr)
@"_SM42scala.collection.convert.AsScalaConvertersG4type" = external global { ptr, i32, i32, ptr, ptr }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL18java.util.IteratorL25scala.collection.IteratorEO"(ptr, ptr)

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare dereferenceable_or_null(16) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL13java.util.MapL28scala.collection.mutable.MapEO"(ptr, ptr)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM39scala.jdk.javaapi.CollectionConverters$G4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 948, i32 2, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 8, i32 948, ptr @"_SM7__constG1-3", i32 1, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D6asJavaL20scala.collection.SeqL14java.util.ListEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM41scala.collection.convert.AsJavaConvertersD6asJavaL20scala.collection.SeqL14java.util.ListEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D7asScalaL13java.util.MapL28scala.collection.mutable.MapEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL13java.util.MapL28scala.collection.mutable.MapEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D7asScalaL13java.util.SetL28scala.collection.mutable.SetEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL13java.util.SetL28scala.collection.mutable.SetEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D7asScalaL14java.util.ListL31scala.collection.mutable.BufferEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL14java.util.ListL31scala.collection.mutable.BufferEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D7asScalaL18java.lang.IterableL25scala.collection.IterableEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL18java.lang.IterableL25scala.collection.IterableEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$D7asScalaL18java.util.IteratorL25scala.collection.IteratorEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000001 = call dereferenceable_or_null(8) ptr @"_SM42scala.collection.convert.AsScalaConvertersD7asScalaL18java.util.IteratorL25scala.collection.IteratorEO"(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM39scala.jdk.javaapi.CollectionConverters$G4load"() noinline personality ptr @scalanative_personality {
_1.0:
  %_4 = getelementptr ptr, ptr @"__modules", i32 288
  %_5 = load ptr, ptr %_4, !dereferenceable_or_null !{i64 8}
  %_6 = icmp ne ptr %_5, null
  br i1 %_6, label %_2.0, label %_3.0
_2.0:
  ret ptr %_5
_3.0:
  %_7 = call dereferenceable_or_null(8) ptr @"scalanative_GC_alloc_small"(ptr @"_SM39scala.jdk.javaapi.CollectionConverters$G4type", i64 8)
  store ptr %_7, ptr%_4, align 8
  call void @"_SM39scala.jdk.javaapi.CollectionConverters$RE"(ptr dereferenceable_or_null(8) %_7)
  ret ptr %_7
}

define void @"_SM39scala.jdk.javaapi.CollectionConverters$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_2000005 = icmp ne ptr %_1, null
  br i1 %_2000005, label %_2000003.0, label %_2000004.0
_2000003.0:
  call void @"_SM41scala.collection.convert.AsJavaConvertersD6$init$uEO"(ptr dereferenceable_or_null(8) %_1)
  call void @"_SM42scala.collection.convert.AsScalaConvertersD6$init$uEO"(ptr dereferenceable_or_null(8) %_1)
  ret void
_2000004.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}