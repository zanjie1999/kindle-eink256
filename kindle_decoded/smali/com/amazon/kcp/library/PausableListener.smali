.class public abstract Lcom/amazon/kcp/library/PausableListener;
.super Ljava/lang/Object;
.source "PausableListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/PausableListener$Callback;
    }
.end annotation


# static fields
.field private static final UPDATE_PENDING_KEY:Ljava/lang/String; = "UpdatePending"


# instance fields
.field private final callback:Lcom/amazon/kcp/library/PausableListener$Callback;

.field private isPaused:Z

.field private pendingRefreshType:Lcom/amazon/kindle/event/EventType;

.field private updatePending:Z

.field private updatePendingForItem:Z


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    .line 40
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePendingForItem:Z

    if-eqz p1, :cond_0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/library/PausableListener;->callback:Lcom/amazon/kcp/library/PausableListener$Callback;

    .line 55
    iput-boolean p2, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "UpdatePending"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    const-string v1, "UpdatePending"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public pauseUpdates()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    return-void
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method public refresh(Lcom/amazon/kindle/event/EventType;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/amazon/kcp/library/PausableListener$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/PausableListener$1;-><init>(Lcom/amazon/kcp/library/PausableListener;Lcom/amazon/kindle/event/EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    .line 95
    iput-object p1, p0, Lcom/amazon/kcp/library/PausableListener;->pendingRefreshType:Lcom/amazon/kindle/event/EventType;

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/PausableListener;->callback:Lcom/amazon/kcp/library/PausableListener$Callback;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/PausableListener$Callback;->onRefresh(Lcom/amazon/kindle/event/EventType;)V

    return-void
.end method

.method public refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lcom/amazon/kcp/library/PausableListener$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/PausableListener$2;-><init>(Lcom/amazon/kcp/library/PausableListener;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/amazon/kcp/library/PausableListener;->updatePendingForItem:Z

    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/PausableListener;->callback:Lcom/amazon/kcp/library/PausableListener$Callback;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/PausableListener$Callback;->onItemRefresh(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method public resumeUpdates()V
    .locals 3

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->isPaused:Z

    .line 126
    iget-boolean v1, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/library/PausableListener;->updatePendingForItem:Z

    if-eqz v1, :cond_2

    .line 129
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kcp/library/PausableListener;->updatePendingForItem:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 132
    iput-object v2, p0, Lcom/amazon/kcp/library/PausableListener;->pendingRefreshType:Lcom/amazon/kindle/event/EventType;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/PausableListener;->pendingRefreshType:Lcom/amazon/kindle/event/EventType;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/PausableListener;->refresh(Lcom/amazon/kindle/event/EventType;)V

    .line 135
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePending:Z

    .line 136
    iput-boolean v0, p0, Lcom/amazon/kcp/library/PausableListener;->updatePendingForItem:Z

    .line 137
    iput-object v2, p0, Lcom/amazon/kcp/library/PausableListener;->pendingRefreshType:Lcom/amazon/kindle/event/EventType;

    :cond_2
    return-void
.end method
