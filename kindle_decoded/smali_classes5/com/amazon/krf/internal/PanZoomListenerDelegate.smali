.class public Lcom/amazon/krf/internal/PanZoomListenerDelegate;
.super Ljava/lang/Object;
.source "PanZoomListenerDelegate.java"

# interfaces
.implements Lcom/amazon/krf/platform/PanZoomListener;


# instance fields
.field private mPanZoomListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/PanZoomListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->mPanZoomListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPanZoomFinished()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/PanZoomListener;

    .line 35
    invoke-interface {v1}, Lcom/amazon/krf/platform/PanZoomListener;->onPanZoomFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanZoomStarted()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/PanZoomListener;

    .line 28
    invoke-interface {v1}, Lcom/amazon/krf/platform/PanZoomListener;->onPanZoomStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/krf/internal/PanZoomListenerDelegate;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
