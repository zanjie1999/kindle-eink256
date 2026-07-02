.class public Lcom/amazon/krf/internal/ContentDecorationListenerImpl;
.super Ljava/lang/Object;
.source "ContentDecorationListenerImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/ContentDecorationListener;


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/amazon/krf/internal/ContentDecorationListenerImpl;->mNativeHandle:J

    return-void
.end method

.method private native finalizeNative()V
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/ContentDecorationListenerImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/amazon/krf/internal/ContentDecorationListenerImpl;->finalizeNative()V

    .line 33
    iput-wide v2, p0, Lcom/amazon/krf/internal/ContentDecorationListenerImpl;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    throw v0
.end method

.method public native onContentDecorationChanged(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ContentDecoration;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onDecorationsInvalidated()V
.end method
