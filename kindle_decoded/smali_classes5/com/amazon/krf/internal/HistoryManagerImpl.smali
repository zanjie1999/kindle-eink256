.class public Lcom/amazon/krf/internal/HistoryManagerImpl;
.super Ljava/lang/Object;
.source "HistoryManagerImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/HistoryManager;


# instance fields
.field private m_nativeHandle:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/amazon/krf/internal/HistoryManagerImpl;->m_nativeHandle:J

    return-void
.end method

.method private native nativeFinalize()V
.end method


# virtual methods
.method public native canGoBack()Z
.end method

.method public native canGoForward()Z
.end method

.method public dispose()V
    .locals 5

    .line 26
    iget-wide v0, p0, Lcom/amazon/krf/internal/HistoryManagerImpl;->m_nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/amazon/krf/internal/HistoryManagerImpl;->nativeFinalize()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/amazon/krf/internal/HistoryManagerImpl;->dispose()V

    return-void
.end method

.method public native goBack()Z
.end method

.method public native goForward()Z
.end method
