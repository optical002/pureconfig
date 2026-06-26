declare i32 @scalanative_personality(...)
declare ptr @scalanative_catch(ptr)

@"_SM7__constG1-0" = private unnamed_addr constant [4 x ptr] [ ptr @"_SM25java.nio.channels.ChannelG4type", ptr @"_SM38java.nio.channels.InterruptibleChannelG4type", ptr @"_SM23java.lang.AutoCloseableG4type", ptr @"_SM17java.io.CloseableG4type" ]
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, i32, i32, [50 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 50, i32 2, [50 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 110, i16 105, i16 111, i16 46, i16 99, i16 104, i16 97, i16 110, i16 110, i16 101, i16 108, i16 115, i16 46, i16 115, i16 112, i16 105, i16 46, i16 65, i16 98, i16 115, i16 116, i16 114, i16 97, i16 99, i16 116, i16 73, i16 110, i16 116, i16 101, i16 114, i16 114, i16 117, i16 112, i16 116, i16 105, i16 98, i16 108, i16 101, i16 67, i16 104, i16 97, i16 110, i16 110, i16 101, i16 108 ] }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-1", i32 0, i32 50, i32 1890665130 }
@"_SM7__constG1-3" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-4" = private unnamed_addr constant [8 x { i32, ptr }] [ { i32, ptr } { i32 -2147483384, ptr null }, { i32, ptr } { i32 -2147483415, ptr null }, { i32, ptr } { i32 -2147483518, ptr null }, { i32, ptr } { i32 0, ptr null }, { i32, ptr } { i32 -2147483356, ptr null }, { i32, ptr } { i32 0, ptr null }, { i32, ptr } { i32 0, ptr null }, { i32, ptr } { i32 0, ptr null } ]
@"_SM23java.lang.AutoCloseableG4type" = external global { ptr, i32, i32, ptr, ptr }
@"_SM38java.nio.channels.InterruptibleChannelG4type" = external global { ptr, i32, i32, ptr, ptr }
@"_SM16java.lang.ObjectG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] }
@"_SM25java.nio.channels.ChannelG4type" = external global { ptr, i32, i32, ptr, ptr }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM17java.io.CloseableG4type" = external global { ptr, i32, i32, ptr, ptr }
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [6 x ptr] }
@"_SM50java.nio.channels.spi.AbstractInterruptibleChannelG4type" = hidden global { { ptr, i32, i32, ptr, ptr }, i32, i32, ptr, i32, ptr, ptr, [3 x ptr] } { { ptr, i32, i32, ptr, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1018, i32 4, ptr @"_SM7__constG1-0", ptr @"_SM7__constG1-2" }, i32 8, i32 1020, ptr @"_SM7__constG1-3", i32 7, ptr @"_SM7__constG1-4", ptr @"_SM16java.lang.ObjectG4type", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }