.class public Lcom/amazon/krf/internal/KRFResourceStreamImpl;
.super Ljava/lang/Object;
.source "KRFResourceStreamImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFResourceStream;


# instance fields
.field nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/amazon/krf/internal/KRFResourceStreamImpl;->nativeRef:J

    return-void
.end method

.method private native finalizeNative()V
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .line 37
    iget-wide v0, p0, Lcom/amazon/krf/internal/KRFResourceStreamImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFResourceStreamImpl;->finalizeNative()V

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

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFResourceStreamImpl;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 32
    throw v0
.end method

.method public native getCurrentPosition()J
.end method

.method public native getDataLength()J
.end method

.method public native isValid()Z
.end method

.method public native readBytes([BJ)J
.end method

.method public native seekAbsolute(J)Z
.end method
