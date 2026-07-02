.class public Lcom/amazon/kcp/application/HistoryManager;
.super Ljava/lang/Object;
.source "HistoryManager.java"


# instance fields
.field private historizableArray:Ljava/util/Vector;

.field private stateArray:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    .line 17
    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public hasBack()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kcp/application/HistoryManager;->hasBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/Historizable;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/Historizable;->restoreState([Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    return v2

    .line 46
    :cond_0
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0
.end method

.method public push(Lcom/amazon/kcp/application/Historizable;)Z
    .locals 2

    .line 33
    invoke-interface {p1}, Lcom/amazon/kcp/application/Historizable;->saveState()[Ljava/lang/Object;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/amazon/kcp/application/HistoryManager;->stateArray:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/application/HistoryManager;->historizableArray:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
