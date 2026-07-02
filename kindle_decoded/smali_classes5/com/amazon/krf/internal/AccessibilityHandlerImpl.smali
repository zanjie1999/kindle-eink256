.class public Lcom/amazon/krf/internal/AccessibilityHandlerImpl;
.super Ljava/lang/Object;
.source "AccessibilityHandlerImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/AccessibilityHandler;


# instance fields
.field nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 25
    iput-wide p1, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t construct AcessibilityHandlerImpl with nullptr"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native finalizeNative(J)V
.end method

.method private static native nativeGetAccessibilityPluginItems(ZJ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/AccessibilityPluginItem;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetContentVirtualViews(ZJ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetDecorationItems(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/DecorationItem;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetImagePageElements(J)[Lcom/amazon/krf/platform/element/ImagePageElement;
.end method

.method private static native nativeGetKVGPageElements(J)[Lcom/amazon/krf/platform/element/KVGPageElement;
.end method

.method private static native nativeGetTextAtGranularity(IZJ)Ljava/lang/String;
.end method

.method private static native nativeHasDecorationInfoMapChanged(J)Z
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 129
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->finalizeNative(J)V

    .line 130
    iput-wide v2, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 35
    throw v0
.end method

.method public declared-synchronized getAccessibilityPluginItems(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/AccessibilityPluginItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 68
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetAccessibilityPluginItems(ZJ)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "KRF"

    const-string v0, "getAccessibilityPluginItems called with invalid state"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentVirtualViews(Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {p1, v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetContentVirtualViews(ZJ)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "KRF"

    const-string v0, "getContentVirtualViews called with invalid state"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDecorationItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/DecorationItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 57
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetDecorationItems(J)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "getDecorationItems called with invalid state"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImagePageElements()[Lcom/amazon/krf/platform/element/ImagePageElement;
    .locals 5

    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetImagePageElements(J)[Lcom/amazon/krf/platform/element/ImagePageElement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "getImagePageElements called with invalid state"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKVGPageElements()[Lcom/amazon/krf/platform/element/KVGPageElement;
    .locals 5

    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetKVGPageElements(J)[Lcom/amazon/krf/platform/element/KVGPageElement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "getKVGPageElements called with invalid state"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextAtGranularity(IZ)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 40
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 46
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {p1, p2, v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeGetTextAtGranularity(IZJ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string p1, "KRF"

    const-string p2, "getTextAtGranularity called with invalid state"

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasDecorationInfoMapChanged()Z
    .locals 5

    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 79
    iget-wide v0, p0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeRef:J

    invoke-static {v0, v1}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->nativeHasDecorationInfoMapChanged(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "KRF"

    const-string v1, "hasDecorationInfoMapChanged called with invalid state"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AccessibilityHandlerImpl Called after dispose()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
