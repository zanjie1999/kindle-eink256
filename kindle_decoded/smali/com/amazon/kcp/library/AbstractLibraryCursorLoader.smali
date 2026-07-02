.class public abstract Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "AbstractLibraryCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private refreshType:Lcom/amazon/kindle/event/EventType;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->result:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getRefreshType()Lcom/amazon/kindle/event/EventType;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->refreshType:Lcom/amazon/kindle/event/EventType;

    return-object v0
.end method

.method protected abstract loadData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->loadData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->postProcessData(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected onCancelLoad()Z
    .locals 3

    .line 118
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader$1;-><init>(Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return v0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 104
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->onStopLoading()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->result:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->deliverResult(Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method protected postProcessData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public setRefreshType(Lcom/amazon/kindle/event/EventType;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/library/AbstractLibraryCursorLoader;->refreshType:Lcom/amazon/kindle/event/EventType;

    return-void
.end method
