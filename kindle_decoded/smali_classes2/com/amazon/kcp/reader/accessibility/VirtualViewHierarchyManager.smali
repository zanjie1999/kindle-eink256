.class public Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;
.super Ljava/lang/Object;
.source "VirtualViewHierarchyManager.java"


# instance fields
.field private changedSinceLastMark:Z

.field private hoverGesturesDisabled:Z

.field protected providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->hoverGesturesDisabled:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public changedSinceLastMark()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    return v0
.end method

.method public getHoverGesturesDisabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->hoverGesturesDisabled:Z

    return v0
.end method

.method public getVirtualViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;

    .line 47
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->hoverGesturesDisabled:Z

    invoke-interface {v2, v3}, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;->getVirtualViews(Z)Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public markRead()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    return-void
.end method

.method public notifyAccessibilityStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;

    .line 69
    invoke-interface {v0}, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;->onAccessibilityEnabled()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    goto :goto_2

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;

    .line 74
    invoke-interface {v0}, Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;->onAccessibilityDisabled()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onVirtualViewsChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    return-void
.end method

.method public registerVirtualViewProvider(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    return-void
.end method

.method public reset()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark:Z

    return-void
.end method

.method public setHoverGesturesDisabled(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->hoverGesturesDisabled:Z

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    return-void
.end method
