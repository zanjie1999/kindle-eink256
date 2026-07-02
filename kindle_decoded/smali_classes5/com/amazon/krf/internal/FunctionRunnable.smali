.class public Lcom/amazon/krf/internal/FunctionRunnable;
.super Ljava/lang/Object;
.source "FunctionRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mFunctionNativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/amazon/krf/internal/FunctionRunnable;->mFunctionNativePtr:J

    return-void
.end method

.method private disposeFunction()V
    .locals 5

    .line 27
    iget-wide v0, p0, Lcom/amazon/krf/internal/FunctionRunnable;->mFunctionNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 28
    invoke-static {v0, v1}, Lcom/amazon/krf/internal/FunctionRunnable;->nativeDisposeFunction(J)V

    .line 29
    iput-wide v2, p0, Lcom/amazon/krf/internal/FunctionRunnable;->mFunctionNativePtr:J

    :cond_0
    return-void
.end method

.method private static native nativeDisposeFunction(J)V
.end method

.method private static native nativeExecuteFunction(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/krf/internal/FunctionRunnable;->disposeFunction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    throw v0
.end method

.method public run()V
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/amazon/krf/internal/FunctionRunnable;->mFunctionNativePtr:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/FunctionRunnable;->nativeExecuteFunction(J)V

    return-void
.end method
