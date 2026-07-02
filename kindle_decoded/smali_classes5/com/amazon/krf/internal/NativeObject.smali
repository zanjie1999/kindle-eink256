.class Lcom/amazon/krf/internal/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/amazon/krf/internal/NativeObject;->mHandle:J

    return-void
.end method

.method private native nativeDispose(J)V
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 33
    iget-wide v0, p0, Lcom/amazon/krf/internal/NativeObject;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 34
    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/NativeObject;->nativeDispose(J)V

    .line 35
    iput-wide v2, p0, Lcom/amazon/krf/internal/NativeObject;->mHandle:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/NativeObject;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 45
    throw v0
.end method

.method public getHandle()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/amazon/krf/internal/NativeObject;->mHandle:J

    return-wide v0
.end method
