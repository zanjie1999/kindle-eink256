.class public final Lkotlinx/coroutines/PoolThread;
.super Ljava/lang/Thread;
.source "ThreadPoolDispatcher.kt"


# instance fields
.field public final dispatcher:Lkotlinx/coroutines/ThreadPoolDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/coroutines/PoolThread;->dispatcher:Lkotlinx/coroutines/ThreadPoolDispatcher;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method
