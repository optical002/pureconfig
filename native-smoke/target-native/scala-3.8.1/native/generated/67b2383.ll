declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [0 x ptr] [  ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [50 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 50, i32 2, [50 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 110, i16 105, i16 111, i16 46, i16 102, i16 115, i16 46, i16 71, i16 101, i16 110, i16 101, i16 114, i16 105, i16 99, i16 70, i16 105, i16 108, i16 101, i16 83, i16 121, i16 115, i16 116, i16 101, i16 109, i16 80, i16 114, i16 111, i16 118, i16 105, i16 100, i16 101, i16 114 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 50, i32 -515426747 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [0 x { i32, ptr }] [  ]
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [1 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 1, i32 2, [1 x i16] [ i16 47 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 1, i32 47 }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 80, i16 97, i16 116, i16 104, i16 32, i16 99, i16 111, i16 109, i16 112, i16 111, i16 110, i16 101, i16 110, i16 116, i16 32, i16 115, i16 104, i16 111, i16 117, i16 108, i16 100, i16 32, i16 98, i16 101, i16 32, i16 39, i16 47, i16 39 ] }
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-7", i32 0, i32 28, i32 -150326991 }
@"_SM7__constG1-9" = private unnamed_addr constant { ptr, i32, i32, [4 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 4, i32 2, [4 x i16] [ i16 102, i16 105, i16 108, i16 101 ] }
@"_SM7__constG2-10" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-9", i32 0, i32 4, i32 3143036 }
@"_SM7__constG2-11" = private unnamed_addr constant { ptr, i32, i32, [32 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 32, i32 2, [32 x i16] [ i16 85, i16 82, i16 73, i16 32, i16 100, i16 111, i16 101, i16 115, i16 32, i16 110, i16 111, i16 116, i16 32, i16 109, i16 97, i16 116, i16 99, i16 104, i16 32, i16 116, i16 104, i16 105, i16 115, i16 32, i16 112, i16 114, i16 111, i16 118, i16 105, i16 100, i16 101, i16 114 ] }
@"_SM7__constG2-12" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG2-11", i32 0, i32 32, i32 -1892989192 }

declare ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr, ptr, ptr) noinline
@"_SM34java.lang.IllegalArgumentExceptionG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM10scala.SomeG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [4 x ptr] }
@"_SM15scala.Function2G4type" = external global { ptr, i32, i32, ptr, ptr }

declare dereferenceable_or_null(8) ptr @"_SM11scala.None$G4load"() noinline

declare ptr @"scalanative_throw"(ptr)

declare void @"_SM34java.lang.IllegalArgumentExceptionRL16java.lang.StringE"(ptr, ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }

declare dereferenceable_or_null(32) ptr @"_SM12java.net.URID7getPathL16java.lang.StringEO"(ptr)

declare dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr) alwaysinline

declare dereferenceable_or_null(32) ptr @"_SM12java.net.URID9getSchemeL16java.lang.StringEO"(ptr)

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr, ptr)
@"_SM36java.nio.file.spi.FileSystemProviderG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM41java.nio.file.attribute.FileAttributeViewG4type" = external global { ptr, i32, i32, ptr, ptr }

declare void @"_SM35scala.scalanative.runtime.ThrowableRzE"(ptr, i1) noinline

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM16scala.MatchErrorG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [5 x ptr] }
@"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderG4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 779, i32 0, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 8, i32 780, ptr @"_SM7__constG1-3", i32 0, ptr @"_SM7__constG1-4", ptr @"_SM36java.nio.file.spi.FileSystemProviderG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(8) ptr @"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderD13getFileSystemL12java.net.URIL24java.nio.file.FileSystemEO"(ptr %_2, ptr %_1) personality ptr @scalanative_personality {
_3.0:
  %_44 = icmp ne ptr %_1, null
  br i1 %_44, label %_42.0, label %_43.0
_42.0:
  %_13 = call dereferenceable_or_null(32) ptr @"_SM12java.net.URID7getPathL16java.lang.StringEO"(ptr dereferenceable_or_null(128) %_1)
  %_14 = icmp eq ptr %_13, null
  br i1 %_14, label %_8.0, label %_9.0
_8.0:
  %_15 = icmp eq ptr @"_SM7__constG1-6", null
  br label %_10.0
_9.0:
  %_46 = icmp ne ptr %_13, null
  br i1 %_46, label %_45.0, label %_43.0
_45.0:
  %_17 = call i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr dereferenceable_or_null(32) %_13, ptr @"_SM7__constG1-6")
  br label %_10.0
_10.0:
  %_11 = phi i1 [%_17, %_45.0], [%_15, %_8.0]
  %_18 = xor i1 true, %_11
  br i1 %_18, label %_4.0, label %_5.0
_4.0:
  %_19 = call dereferenceable_or_null(72) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 72)
  call void @"_SM34java.lang.IllegalArgumentExceptionRL16java.lang.StringE"(ptr nonnull dereferenceable(72) %_19, ptr @"_SM7__constG1-8")
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(72) %_19)
  unreachable
_5.0:
  %_31 = call dereferenceable_or_null(32) ptr @"_SM12java.net.URID9getSchemeL16java.lang.StringEO"(ptr dereferenceable_or_null(128) %_1)
  %_32 = icmp eq ptr %_31, null
  br i1 %_32, label %_26.0, label %_27.0
_26.0:
  %_33 = icmp eq ptr @"_SM7__constG2-10", null
  br label %_28.0
_27.0:
  %_50 = icmp ne ptr %_31, null
  br i1 %_50, label %_49.0, label %_43.0
_49.0:
  %_35 = call i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr dereferenceable_or_null(32) %_31, ptr @"_SM7__constG2-10")
  br label %_28.0
_28.0:
  %_29 = phi i1 [%_35, %_49.0], [%_33, %_26.0]
  %_36 = xor i1 true, %_29
  br i1 %_36, label %_22.0, label %_23.0
_22.0:
  %_37 = call dereferenceable_or_null(72) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 72)
  call void @"_SM34java.lang.IllegalArgumentExceptionRL16java.lang.StringE"(ptr nonnull dereferenceable(72) %_37, ptr @"_SM7__constG2-12")
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(72) %_37)
  unreachable
_23.0:
  %_54 = icmp ne ptr %_2, null
  br i1 %_54, label %_53.0, label %_43.0
_53.0:
  %_41 = call dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr dereferenceable_or_null(8) %_2)
  br label %_24.0
_24.0:
  %_25 = phi ptr [%_41, %_53.0]
  br label %_6.0
_6.0:
  %_7 = phi ptr [%_25, %_24.0]
  ret ptr %_7
_43.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define dereferenceable_or_null(8) ptr @"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderD20getFileAttributeViewL18java.nio.file.PathL15java.lang.ClassLAL24java.nio.file.LinkOption_L41java.nio.file.attribute.FileAttributeViewEO"(ptr %_1, ptr %_2, ptr %_3, ptr %_4) personality ptr @scalanative_personality {
_5000000.0:
  %_21000007 = icmp ne ptr %_1, null
  br i1 %_21000007, label %_21000005.0, label %_21000006.0
_21000005.0:
  br label %_6000000.0
_6000000.0:
  %_7000001 = bitcast ptr %_1 to ptr
  %_21000009 = icmp ne ptr %_7000001, null
  br i1 %_21000009, label %_21000008.0, label %_21000006.0
_21000008.0:
  %_21000010 = getelementptr { { ptr }, ptr, i64, ptr }, { { ptr }, ptr, i64, ptr }* %_7000001, i32 0, i32 3
  %_7000002 = load ptr, ptr %_21000010, !dereferenceable_or_null !{i64 8}
  %_21000012 = icmp ne ptr %_7000002, null
  br i1 %_21000012, label %_21000011.0, label %_21000006.0
_21000011.0:
  %_21000013 = load ptr, ptr %_7000002
  %_21000014 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000013, i32 0, i32 4
  %_21000015 = load i32, ptr %_21000014
  %_21000016 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000013, i32 0, i32 5
  %_21000017 = load ptr, ptr %_21000016
  %_21000018 = and i32 -2147483511, %_21000015
  %_21000019 = getelementptr { i32, ptr }, { i32, ptr }* %_21000017, i32 %_21000018, i32 1
  %_21000020 = load ptr, ptr %_21000019
  %_21000021 = getelementptr ptr, ptr %_21000020, i32 6
  %_6000003 = load ptr, ptr %_21000021
  %_6000004 = call dereferenceable_or_null(8) ptr %_6000003(ptr dereferenceable_or_null(8) %_7000002, ptr dereferenceable_or_null(72) %_3)
  %_6000005 = call dereferenceable_or_null(8) ptr @"_SM11scala.None$G4load"()
  %_6000006 = call i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr nonnull dereferenceable(8) %_6000005, ptr dereferenceable_or_null(8) %_6000004)
  br i1 %_6000006, label %_8000000.0, label %_9000000.0
_8000000.0:
  br label %_10000000.0
_9000000.0:
  br label %_11000000.0
_11000000.0:
  %_21000025 = icmp eq ptr %_6000004, null
  br i1 %_21000025, label %_21000022.0, label %_21000023.0
_21000022.0:
  br label %_21000024.0
_21000023.0:
  %_21000026 = load ptr, ptr %_6000004
  %_21000027 = icmp eq ptr %_21000026, @"_SM10scala.SomeG4type"
  br label %_21000024.0
_21000024.0:
  %_11000002 = phi i1 [%_21000027, %_21000023.0], [false, %_21000022.0]
  br i1 %_11000002, label %_12000000.0, label %_13000000.0
_12000000.0:
  %_21000031 = icmp eq ptr %_6000004, null
  br i1 %_21000031, label %_21000029.0, label %_21000028.0
_21000028.0:
  %_21000032 = load ptr, ptr %_6000004
  %_21000033 = icmp eq ptr %_21000032, @"_SM10scala.SomeG4type"
  br i1 %_21000033, label %_21000029.0, label %_21000030.0
_21000029.0:
  %_21000035 = icmp ne ptr %_6000004, null
  br i1 %_21000035, label %_21000034.0, label %_21000006.0
_21000034.0:
  %_21000036 = getelementptr { { ptr }, ptr }, { { ptr }, ptr }* %_6000004, i32 0, i32 1
  %_14000001 = load ptr, ptr %_21000036, !dereferenceable_or_null !{i64 8}
  %_21000039 = icmp eq ptr %_14000001, null
  br i1 %_21000039, label %_21000038.0, label %_21000037.0
_21000037.0:
  %_21000040 = load ptr, ptr %_14000001
  %_21000041 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000040, i32 0, i32 4
  %_21000042 = load i32, ptr %_21000041
  %_21000044 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000040, i32 0, i32 5
  %_21000045 = load ptr, ptr %_21000044
  %_21000046 = and i32 -2147482591, %_21000042
  %_21000047 = getelementptr { i32, ptr }, { i32, ptr }* %_21000045, i32 %_21000046, i32 0
  %_21000048 = load i32, ptr %_21000047
  %_21000049 = icmp eq i32 -2147482591, %_21000048
  br i1 %_21000049, label %_21000038.0, label %_21000030.0
_21000038.0:
  %_21000051 = icmp ne ptr %_14000001, null
  br i1 %_21000051, label %_21000050.0, label %_21000006.0
_21000050.0:
  %_21000052 = load ptr, ptr %_14000001
  %_21000053 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000052, i32 0, i32 4
  %_21000054 = load i32, ptr %_21000053
  %_21000055 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000052, i32 0, i32 5
  %_21000056 = load ptr, ptr %_21000055
  %_21000057 = and i32 -2147482591, %_21000054
  %_21000058 = getelementptr { i32, ptr }, { i32, ptr }* %_21000056, i32 %_21000057, i32 1
  %_21000059 = load ptr, ptr %_21000058
  %_21000060 = getelementptr ptr, ptr %_21000059, i32 0
  %_12000004 = load ptr, ptr %_21000060
  %_12000005 = call dereferenceable_or_null(8) ptr %_12000004(ptr dereferenceable_or_null(8) %_14000001, ptr dereferenceable_or_null(8) %_2, ptr dereferenceable_or_null(16) %_4)
  %_21000063 = icmp eq ptr %_12000005, null
  br i1 %_21000063, label %_21000062.0, label %_21000061.0
_21000061.0:
  %_21000064 = load ptr, ptr %_12000005
  %_21000065 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000064, i32 0, i32 4
  %_21000066 = load i32, ptr %_21000065
  %_21000068 = getelementptr { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }, { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [0 x ptr] }* %_21000064, i32 0, i32 5
  %_21000069 = load ptr, ptr %_21000068
  %_21000070 = and i32 -2147483134, %_21000066
  %_21000071 = getelementptr { i32, ptr }, { i32, ptr }* %_21000069, i32 %_21000070, i32 0
  %_21000072 = load i32, ptr %_21000071
  %_21000073 = icmp eq i32 -2147483134, %_21000072
  br i1 %_21000073, label %_21000062.0, label %_21000030.0
_21000062.0:
  br label %_10000000.0
_13000000.0:
  br label %_15000000.0
_10000000.0:
  %_10000001 = phi ptr [%_12000005, %_21000062.0], [null, %_8000000.0]
  ret ptr %_10000001
_15000000.0:
  %_21000001 = call dereferenceable_or_null(88) ptr @"scalanative_GC_alloc_small"(ptr @"_SM16scala.MatchErrorG4type", i64 88)
  %_21000075 = getelementptr { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1 }, { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1 }* %_21000001, i32 0, i32 8
  %_21000076 = zext i1 true to i8
  store i8 %_21000076, ptr%_21000075, align 1
  %_21000078 = getelementptr { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1, ptr, ptr }, { { ptr }, ptr, ptr, ptr, ptr, i1, ptr, ptr, i1, ptr, ptr }* %_21000001, i32 0, i32 9
  store ptr %_6000004, ptr%_21000078, align 8
  call void @"_SM35scala.scalanative.runtime.ThrowableRzE"(ptr nonnull dereferenceable(88) %_21000001, i1 true)
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(88) %_21000001)
  unreachable
_21000006.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
_21000030.0:
  %_21000082 = phi ptr [%_6000004, %_21000028.0], [%_14000001, %_21000037.0], [%_12000005, %_21000061.0]
  %_21000083 = phi ptr [@"_SM10scala.SomeG4type", %_21000028.0], [@"_SM15scala.Function2G4type", %_21000037.0], [@"_SM41java.nio.file.attribute.FileAttributeViewG4type", %_21000061.0]
  %_21000084 = load ptr, ptr %_21000082
  call ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr null, ptr %_21000084, ptr %_21000083)
  unreachable
}