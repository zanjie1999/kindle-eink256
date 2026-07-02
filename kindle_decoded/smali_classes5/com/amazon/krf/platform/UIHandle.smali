.class public Lcom/amazon/krf/platform/UIHandle;
.super Ljava/lang/Object;
.source "UIHandle.java"


# instance fields
.field nativeRef:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p0}, Lcom/amazon/krf/platform/UIHandle;->createHandle(Lcom/amazon/krf/platform/UIHandle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/krf/platform/UIHandle;->nativeRef:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/amazon/krf/platform/UIHandle;->nativeRef:J

    return-void
.end method

.method private static native createHandle(Lcom/amazon/krf/platform/UIHandle;)J
.end method

.method private native nativeFinalize()V
.end method


# virtual methods
.method public finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/platform/UIHandle;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/amazon/krf/platform/UIHandle;->nativeFinalize()V

    .line 35
    iput-wide v2, p0, Lcom/amazon/krf/platform/UIHandle;->nativeRef:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    throw v0
.end method
