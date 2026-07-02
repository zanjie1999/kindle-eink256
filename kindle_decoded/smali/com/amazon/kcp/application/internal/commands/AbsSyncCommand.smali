.class public abstract Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.super Lcom/amazon/kcp/application/internal/commands/CCommand;
.source "AbsSyncCommand.java"


# instance fields
.field private isExecuted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doExecute()V
.end method

.method public execute()V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->isExecuted:Z

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->doExecute()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->isExecuted:Z

    :cond_0
    return-void
.end method

.method protected postKill()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kcp/application/internal/commands/CCommand;->kill()V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
