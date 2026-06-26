declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [21 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 21, i32 2, [21 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 100, i16 101, i16 114, i16 105, i16 118, i16 105, i16 110, i16 103, i16 46, i16 77, i16 105, i16 114, i16 114, i16 111, i16 114 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 21, i32 598796865 }
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [22 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 22, i32 2, [22 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 100, i16 101, i16 114, i16 105, i16 118, i16 105, i16 110, i16 103, i16 46, i16 77, i16 105, i16 114, i16 114, i16 111, i16 114, i16 36 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 22, i32 1382833667 }
@"_SM7__constG1-5" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-6" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM7__constG1-7" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM21scala.deriving.MirrorG4type" ]
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 100, i16 101, i16 114, i16 105, i16 118, i16 105, i16 110, i16 103, i16 46, i16 77, i16 105, i16 114, i16 114, i16 111, i16 114, i16 36, i16 80, i16 114, i16 111, i16 100, i16 117, i16 99, i16 116 ] }
@"_SM7__constG1-9" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-8", i32 0, i32 29, i32 -1829253780 }
@"_SM7__constG2-10" = private unnamed_addr constant [2 x ptr] [ ptr @"_SM21scala.deriving.MirrorG4type", ptr @"_SM29scala.deriving.Mirror$ProductG4type" ]
@"_SM7__constG2-11" = private unnamed_addr constant { ptr, i32, i32, [31 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 31, i32 2, [31 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 100, i16 101, i16 114, i16 105, i16 118, i16 105, i16 110, i16 103, i16 46, i16 77, i16 105, i16 114, i16 114, i16 111, i16 114, i16 36, i16 83, i16 105, i16 110, i16 103, i16 108, i16 101, i16 116, i16 111, i16 110 ] }
@"_SM7__constG2-12" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG2-11", i32 0, i32 31, i32 -1713943224 }
@"_SM7__constG2-13" = private unnamed_addr constant { ptr, i32, i32, [25 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 25, i32 2, [25 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 100, i16 101, i16 114, i16 105, i16 118, i16 105, i16 110, i16 103, i16 46, i16 77, i16 105, i16 114, i16 114, i16 111, i16 114, i16 36, i16 83, i16 117, i16 109 ] }
@"_SM7__constG2-14" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG2-13", i32 0, i32 25, i32 -1328446136 }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM21scala.deriving.MirrorG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147483486, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }
@"_SM22scala.deriving.Mirror$G4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 170, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-4" }, i32 8, i32 170, ptr @"_SM7__constG1-5", i32 0, ptr @"_SM7__constG1-6", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM22scala.deriving.Mirror$G8instance" = hidden global { ptr } { ptr @"_SM22scala.deriving.Mirror$G4type" }
@"_SM29scala.deriving.Mirror$ProductG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147483007, i32 1, ptr @"_SM7__constG1-7", ptr @"_SM7__constG1-9" }
@"_SM31scala.deriving.Mirror$SingletonG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147483260, i32 2, ptr @"_SM7__constG2-10", ptr @"_SM7__constG2-12" }
@"_SM25scala.deriving.Mirror$SumG4type" = hidden global { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -2147480576, i32 1, ptr @"_SM7__constG1-7", ptr @"_SM7__constG2-14" }

define dereferenceable_or_null(8) ptr @"_SM22scala.deriving.Mirror$D9fromTupleL29scala.deriving.Mirror$ProductL13scala.ProductL16java.lang.ObjectEO"(ptr %_1, ptr %_2, ptr %_3) personality ptr @scalanative_personality {
_4000000.0:
  %_4000006 = icmp ne ptr %_2, null
  br i1 %_4000006, label %_4000004.0, label %_4000005.0
_4000004.0:
  %_4000007 = load ptr, ptr %_2
  %_4000008 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_4000007, i32 0, i32 4
  %_4000009 = load i32, ptr %_4000008
  %_4000010 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_4000007, i32 0, i32 5
  %_4000011 = load ptr, ptr %_4000010
  %_4000012 = and i32 -2147483007, %_4000009
  %_4000013 = getelementptr { i32, ptr }, { i32, ptr }* %_4000011, i32 %_4000012, i32 1
  %_4000014 = load ptr, ptr %_4000013
  %_4000015 = getelementptr ptr, ptr %_4000014, i32 0
  %_4000002 = load ptr, ptr %_4000015
  %_4000003 = call dereferenceable_or_null(8) ptr %_4000002(ptr dereferenceable_or_null(8) %_2, ptr dereferenceable_or_null(8) %_3)
  ret ptr %_4000003
_4000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define void @"_SM22scala.deriving.Mirror$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret void
}

define dereferenceable_or_null(8) ptr @"_SM31scala.deriving.Mirror$SingletonD11fromProductL13scala.ProductL31scala.deriving.Mirror$SingletonEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_3000003 = icmp ne ptr %_1, null
  br i1 %_3000003, label %_3000001.0, label %_3000002.0
_3000001.0:
  ret ptr %_1
_3000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}