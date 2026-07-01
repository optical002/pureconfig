declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [1 x ptr] [ ptr @"_SM20java.io.SerializableG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, [35 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 35, i32 2, [35 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 99, i16 111, i16 110, i16 116, i16 114, i16 111, i16 108, i16 46, i16 67, i16 111, i16 110, i16 116, i16 114, i16 111, i16 108, i16 84, i16 104, i16 114, i16 111, i16 119, i16 97, i16 98, i16 108, i16 101 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-1", i32 0, i32 35, i32 1233961656 }
@"_SM7__constG1-3" = private unnamed_addr constant [7 x i32] [ i32 16, i32 24, i32 32, i32 40, i32 56, i32 64, i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [1 x { i32, ptr }] [ { i32, ptr } { i32 -2147483621, ptr null } ]
@"_SM7__constG1-5" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", ptr null, i32 28, i32 2, [28 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 117, i16 116, i16 105, i16 108, i16 46, i16 99, i16 111, i16 110, i16 116, i16 114, i16 111, i16 108, i16 46, i16 78, i16 111, i16 110, i16 70, i16 97, i16 116, i16 97, i16 108, i16 36 ] }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr null, ptr @"_SM7__constG1-6", i32 0, i32 28, i32 -1886501864 }
@"_SM7__constG1-8" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-9" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM11scala.Some$G8instance" = external global { ptr, ptr }
@"_SM21java.lang.ThreadDeathG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }

declare ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr, ptr, ptr) noinline
@"_SM30java.lang.InterruptedExceptionG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM29java.lang.VirtualMachineErrorG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }

declare dereferenceable_or_null(16) ptr @"_SM11scala.None$G4load"()
@"_SM20java.io.SerializableG4type" = external global { ptr, ptr, i32, i32, ptr, ptr }

declare dereferenceable_or_null(80) ptr @"_SM19java.lang.ThrowableD8getCauseL19java.lang.ThrowableEO"(ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM19java.lang.ThrowableG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare nonnull dereferenceable(24) ptr @"_SM11scala.Some$D5applyL16java.lang.ObjectL10scala.SomeEO"(ptr, ptr)
@"_SM22java.lang.LinkageErrorG4type" = external global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(40) ptr @"_SM19java.lang.ThrowableD10getMessageL16java.lang.StringEO"(ptr)

declare dereferenceable_or_null(40) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(40) ptr @"_SM19java.lang.ThrowableD8toStringL16java.lang.StringEO"(ptr)
@"_SM35scala.util.control.ControlThrowableG4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1124, i32 1, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 80, i32 1124, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM19java.lang.ThrowableG4type", [5 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM19java.lang.ThrowableD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO", ptr @"_SM19java.lang.ThrowableD8getCauseL19java.lang.ThrowableEO", ptr @"_SM19java.lang.ThrowableD10getMessageL16java.lang.StringEO" ] }
@"_SM28scala.util.control.NonFatal$G4type" = hidden global { { ptr, ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", ptr null, i32 1749, i32 0, ptr @"_SM7__constG1-5", ptr @"_SM7__constG1-7" }, i32 16, i32 1749, ptr @"_SM7__constG1-8", i32 0, ptr @"_SM7__constG1-9", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM28scala.util.control.NonFatal$G8instance" = hidden global { ptr, ptr } { ptr @"_SM28scala.util.control.NonFatal$G4type", ptr null }

define i1 @"_SM28scala.util.control.NonFatal$D5applyL19java.lang.ThrowablezEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  br label %_4000000.0
_4000000.0:
  br label %_5000000.0
_5000000.0:
  br label %_6000000.0
_6000000.0:
  %_24000005 = icmp eq ptr %_2, null
  br i1 %_24000005, label %_24000002.0, label %_24000003.0
_24000002.0:
  br label %_24000004.0
_24000003.0:
  %_24000006 = load ptr, ptr %_2
  %_24000007 = getelementptr { ptr, ptr, i32, i32, ptr, ptr }, { ptr, ptr, i32, i32, ptr, ptr }* %_24000006, i32 0, i32 2
  %_24000008 = load i32, ptr %_24000007
  %_24000009 = icmp sle i32 1189, %_24000008
  %_24000010 = icmp sle i32 %_24000008, 1191
  %_24000011 = and i1 %_24000009, %_24000010
  br label %_24000004.0
_24000004.0:
  %_6000002 = phi i1 [%_24000011, %_24000003.0], [false, %_24000002.0]
  br i1 %_6000002, label %_7000000.0, label %_8000000.0
_7000000.0:
  %_24000015 = icmp eq ptr %_2, null
  br i1 %_24000015, label %_24000013.0, label %_24000012.0
_24000012.0:
  %_24000016 = load ptr, ptr %_2
  %_24000017 = getelementptr { ptr, ptr, i32, i32, ptr, ptr }, { ptr, ptr, i32, i32, ptr, ptr }* %_24000016, i32 0, i32 2
  %_24000018 = load i32, ptr %_24000017
  %_24000019 = icmp sle i32 1189, %_24000018
  %_24000020 = icmp sle i32 %_24000018, 1191
  %_24000021 = and i1 %_24000019, %_24000020
  br i1 %_24000021, label %_24000013.0, label %_24000014.0
_24000013.0:
  br label %_9000000.0
_8000000.0:
  br label %_10000000.0
_10000000.0:
  %_24000025 = icmp eq ptr %_2, null
  br i1 %_24000025, label %_24000022.0, label %_24000023.0
_24000022.0:
  br label %_24000024.0
_24000023.0:
  %_24000026 = load ptr, ptr %_2
  %_24000027 = icmp eq ptr %_24000026, @"_SM21java.lang.ThreadDeathG4type"
  br label %_24000024.0
_24000024.0:
  %_10000002 = phi i1 [%_24000027, %_24000023.0], [false, %_24000022.0]
  br i1 %_10000002, label %_11000000.0, label %_12000000.0
_11000000.0:
  %_24000030 = icmp eq ptr %_2, null
  br i1 %_24000030, label %_24000029.0, label %_24000028.0
_24000028.0:
  %_24000031 = load ptr, ptr %_2
  %_24000032 = icmp eq ptr %_24000031, @"_SM21java.lang.ThreadDeathG4type"
  br i1 %_24000032, label %_24000029.0, label %_24000014.0
_24000029.0:
  br label %_9000000.0
_12000000.0:
  br label %_13000000.0
_13000000.0:
  %_24000036 = icmp eq ptr %_2, null
  br i1 %_24000036, label %_24000033.0, label %_24000034.0
_24000033.0:
  br label %_24000035.0
_24000034.0:
  %_24000037 = load ptr, ptr %_2
  %_24000038 = icmp eq ptr %_24000037, @"_SM30java.lang.InterruptedExceptionG4type"
  br label %_24000035.0
_24000035.0:
  %_13000002 = phi i1 [%_24000038, %_24000034.0], [false, %_24000033.0]
  br i1 %_13000002, label %_14000000.0, label %_15000000.0
_14000000.0:
  %_24000041 = icmp eq ptr %_2, null
  br i1 %_24000041, label %_24000040.0, label %_24000039.0
_24000039.0:
  %_24000042 = load ptr, ptr %_2
  %_24000043 = icmp eq ptr %_24000042, @"_SM30java.lang.InterruptedExceptionG4type"
  br i1 %_24000043, label %_24000040.0, label %_24000014.0
_24000040.0:
  br label %_9000000.0
_15000000.0:
  br label %_16000000.0
_16000000.0:
  %_24000047 = icmp eq ptr %_2, null
  br i1 %_24000047, label %_24000044.0, label %_24000045.0
_24000044.0:
  br label %_24000046.0
_24000045.0:
  %_24000048 = load ptr, ptr %_2
  %_24000049 = getelementptr { ptr, ptr, i32, i32, ptr, ptr }, { ptr, ptr, i32, i32, ptr, ptr }* %_24000048, i32 0, i32 2
  %_24000050 = load i32, ptr %_24000049
  %_24000051 = icmp sle i32 1192, %_24000050
  %_24000052 = icmp sle i32 %_24000050, 1194
  %_24000053 = and i1 %_24000051, %_24000052
  br label %_24000046.0
_24000046.0:
  %_16000002 = phi i1 [%_24000053, %_24000045.0], [false, %_24000044.0]
  br i1 %_16000002, label %_17000000.0, label %_18000000.0
_17000000.0:
  %_24000056 = icmp eq ptr %_2, null
  br i1 %_24000056, label %_24000055.0, label %_24000054.0
_24000054.0:
  %_24000057 = load ptr, ptr %_2
  %_24000058 = getelementptr { ptr, ptr, i32, i32, ptr, ptr }, { ptr, ptr, i32, i32, ptr, ptr }* %_24000057, i32 0, i32 2
  %_24000059 = load i32, ptr %_24000058
  %_24000060 = icmp sle i32 1192, %_24000059
  %_24000061 = icmp sle i32 %_24000059, 1194
  %_24000062 = and i1 %_24000060, %_24000061
  br i1 %_24000062, label %_24000055.0, label %_24000014.0
_24000055.0:
  br label %_9000000.0
_18000000.0:
  br label %_19000000.0
_19000000.0:
  %_24000066 = icmp eq ptr %_2, null
  br i1 %_24000066, label %_24000063.0, label %_24000064.0
_24000063.0:
  br label %_24000065.0
_24000064.0:
  %_24000067 = load ptr, ptr %_2
  %_24000068 = icmp eq ptr %_24000067, @"_SM35scala.util.control.ControlThrowableG4type"
  br label %_24000065.0
_24000065.0:
  %_19000002 = phi i1 [%_24000068, %_24000064.0], [false, %_24000063.0]
  br i1 %_19000002, label %_20000000.0, label %_21000000.0
_20000000.0:
  %_24000071 = icmp eq ptr %_2, null
  br i1 %_24000071, label %_24000070.0, label %_24000069.0
_24000069.0:
  %_24000072 = load ptr, ptr %_2
  %_24000073 = icmp eq ptr %_24000072, @"_SM35scala.util.control.ControlThrowableG4type"
  br i1 %_24000073, label %_24000070.0, label %_24000014.0
_24000070.0:
  br label %_9000000.0
_21000000.0:
  br label %_22000000.0
_22000000.0:
  br label %_23000000.0
_9000000.0:
  br label %_24000000.0
_23000000.0:
  br label %_24000000.0
_24000000.0:
  %_24000001 = phi i1 [true, %_23000000.0], [false, %_9000000.0]
  ret i1 %_24000001
_24000014.0:
  %_24000074 = phi ptr [%_2, %_24000069.0], [%_2, %_24000054.0], [%_2, %_24000039.0], [%_2, %_24000028.0], [%_2, %_24000012.0]
  %_24000075 = phi ptr [@"_SM35scala.util.control.ControlThrowableG4type", %_24000069.0], [@"_SM22java.lang.LinkageErrorG4type", %_24000054.0], [@"_SM30java.lang.InterruptedExceptionG4type", %_24000039.0], [@"_SM21java.lang.ThreadDeathG4type", %_24000028.0], [@"_SM29java.lang.VirtualMachineErrorG4type", %_24000012.0]
  %_24000076 = load ptr, ptr %_24000074
  call ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr null, ptr %_24000076, ptr %_24000075)
  unreachable
}

define dereferenceable_or_null(16) ptr @"_SM28scala.util.control.NonFatal$D7unapplyL19java.lang.ThrowableL12scala.OptionEO"(ptr %_1, ptr %_2) personality ptr @scalanative_personality {
_3000000.0:
  %_6000004 = icmp ne ptr %_1, null
  br i1 %_6000004, label %_6000002.0, label %_6000003.0
_6000002.0:
  %_3000001 = call i1 @"_SM28scala.util.control.NonFatal$D5applyL19java.lang.ThrowablezEO"(ptr dereferenceable_or_null(16) %_1, ptr dereferenceable_or_null(80) %_2)
  br i1 %_3000001, label %_4000000.0, label %_5000000.0
_4000000.0:
  %_4000002 = call dereferenceable_or_null(24) ptr @"_SM11scala.Some$D5applyL16java.lang.ObjectL10scala.SomeEO"(ptr nonnull dereferenceable(16) @"_SM11scala.Some$G8instance", ptr dereferenceable_or_null(80) %_2)
  br label %_6000000.0
_5000000.0:
  %_5000001 = call dereferenceable_or_null(16) ptr @"_SM11scala.None$G4load"()
  br label %_6000000.0
_6000000.0:
  %_6000001 = phi ptr [%_5000001, %_5000000.0], [%_4000002, %_4000000.0]
  ret ptr %_6000001
_6000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define void @"_SM28scala.util.control.NonFatal$RE"(ptr %_1) personality ptr @scalanative_personality {
_2000000.0:
  ret void
}