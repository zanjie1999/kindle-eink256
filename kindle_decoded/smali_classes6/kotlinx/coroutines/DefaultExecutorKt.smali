.class public final Lkotlinx/coroutines/DefaultExecutorKt;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# static fields
.field private static final DefaultDelay:Lkotlinx/coroutines/Delay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-void
.end method

.method public static final getDefaultDelay()Lkotlinx/coroutines/Delay;
    .locals 1

    .line 10
    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->DefaultDelay:Lkotlinx/coroutines/Delay;

    return-object v0
.end method
