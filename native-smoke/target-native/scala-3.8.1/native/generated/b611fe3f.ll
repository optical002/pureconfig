declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, [23 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 23, i32 2, [23 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-1", i32 0, i32 23, i32 409731804 }
@"_SM7__constG1-3" = private unnamed_addr constant [2 x i32] [ i32 16, i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 28, i32 2, [28 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101, i16 81, i16 117, i16 101, i16 117, i16 101 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-5", i32 0, i32 28, i32 819695509 }
@"_SM7__constG1-7" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, ptr, i32, i32, [27 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 27, i32 2, [27 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 87, i16 101, i16 97, i16 107, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101 ] }
@"_SM7__constG1-9" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-8", i32 0, i32 27, i32 2031630788 }
@"_SM7__constG2-10" = private unnamed_addr constant [4 x i32] [ i32 16, i32 32, i32 40, i32 -1 ]
@"_SM7__constG2-11" = private unnamed_addr constant { ptr, ptr, i32, i32, [36 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 36, i32 2, [36 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 87, i16 101, i16 97, i16 107, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101, i16 82, i16 101, i16 103, i16 105, i16 115, i16 116, i16 114, i16 121, i16 36 ] }
@"_SM7__constG2-12" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG2-11", i32 0, i32 36, i32 544111139 }
@"_SM16java.lang.StringG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"__modules" = external global [565 x ptr]
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare ptr @"__scalanative_loadModule"(ptr, ptr, i64, ptr)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(40) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM23java.lang.ref.ReferenceG4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1756, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 24, i32 1757, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM28java.lang.ref.ReferenceQueueG4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1892, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-6" }, i32 16, i32 1892, ptr @"_SM7__constG1-7", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM27java.lang.ref.WeakReferenceG4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1757, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-9" }, i32 48, i32 1757, ptr @"_SM7__constG2-10", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM23java.lang.ref.ReferenceG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM36java.lang.ref.WeakReferenceRegistry$G4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 55, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG2-12" }, i32 16, i32 55, ptr @"_SM7__constG1-7", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(16) ptr @"_SM27java.lang.ref.WeakReferenceD3getL16java.lang.ObjectEO"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  %_3000005 = getelementptr { { ptr, ptr }, ptr, i1, ptr, ptr }, { { ptr, ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 4
  %_3000001 = load atomic ptr, ptr %_3000005 seq_cst, align 8
  ret ptr %_3000001
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define void @"_SM27java.lang.ref.WeakReferenceRL16java.lang.ObjectE"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_10000003 = icmp ne ptr %_1, null
  br i1 %_10000003, label %_10000001.0, label %_10000002.0
_10000001.0:
  %_10000005 = getelementptr { { ptr, ptr }, ptr, i1, ptr, ptr }, { { ptr, ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 4
  store atomic ptr %_2, ptr%_10000005 seq_cst, align 8
  %_10000007 = getelementptr { { ptr, ptr }, ptr, i1, ptr, ptr }, { { ptr, ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 3
  store atomic ptr null, ptr%_10000007 unordered, align 8
  %_10000009 = getelementptr { { ptr, ptr }, ptr }, { { ptr, ptr }, ptr }* %_1, i32 0, i32 1
  store atomic ptr null, ptr%_10000009 unordered, align 8
  %_10000011 = getelementptr { { ptr, ptr }, ptr, i1, ptr, ptr }, { { ptr, ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 2
  %_10000012 = zext i1 false to i8
  store atomic i8 %_10000012, ptr%_10000011 seq_cst, align 1
  %_10000013 = getelementptr { { ptr, ptr }, ptr, i1, ptr, ptr }, { { ptr, ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 4
  %_7000001 = load atomic ptr, ptr %_10000013 seq_cst, align 8
  %_4000006 = icmp eq ptr %_7000001, null
  %_4000007 = xor i1 %_4000006, true
  br i1 %_4000007, label %_8000000.0, label %_9000000.0
_8000000.0:
  %_8000001 = call dereferenceable_or_null(16) ptr @"_SM36java.lang.ref.WeakReferenceRegistry$G4load"()
  call void @"_SM36java.lang.ref.WeakReferenceRegistry$D3addL27java.lang.ref.WeakReferenceuEO"(ptr nonnull dereferenceable(16) %_8000001, ptr dereferenceable_or_null(48) %_1)
  br label %_10000000.0
_9000000.0:
  br label %_10000000.0
_10000000.0:
  ret void
_10000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define void @"_SM36java.lang.ref.WeakReferenceRegistry$D3addL27java.lang.ref.WeakReferenceuEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  br label %_4000000.0
_4000000.0:
  br label %_5000000.0
_5000000.0:
  ret void
}

define dereferenceable_or_null(16) ptr @"_SM36java.lang.ref.WeakReferenceRegistry$G4load"() personality ptr @scalanative_personality {
_1.0:
  %_4 = getelementptr ptr, ptr @"__modules", i32 4
  %_5 = call ptr @"__scalanative_loadModule"(ptr %_4, ptr @"_SM36java.lang.ref.WeakReferenceRegistry$G4type", i64 16, ptr @"_SM36java.lang.ref.WeakReferenceRegistry$RE")
  ret ptr %_5
}

define void @"_SM36java.lang.ref.WeakReferenceRegistry$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  br label %_4000000.0
_4000000.0:
  br label %_5000000.0
_5000000.0:
  ret void
}