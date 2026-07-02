.class public Lcom/amazon/krf/internal/NavigationListenerDelegate;
.super Ljava/lang/Object;
.source "NavigationListenerDelegate.java"

# interfaces
.implements Lcom/amazon/krf/platform/NavigationListener;


# instance fields
.field private mNavigationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/NavigationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onExternalFullscreenViewClosed()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 59
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onExternalFullscreenViewClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onExternalFullscreenViewOpened()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 52
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onExternalFullscreenViewOpened()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onExternalLinkClicked(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 80
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onExternalLinkClicked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutComplete(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 101
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onLayoutComplete(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigationFailed()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 94
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onNavigationFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageChange(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 45
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onPageChange(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPositionRangeChanged(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 38
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onPositionRangeChanged(Lcom/amazon/krf/platform/event/NavigationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 73
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostPageTransitionAnimation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 66
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onPostPageTransitionAnimation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreNavigation(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 31
    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/NavigationListener;->onPreNavigation(Lcom/amazon/krf/platform/event/NavigationEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRenderComplete()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 87
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onRenderComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRubberbandingBegin()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 108
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onRubberbandingBegin()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRubberbandingEnd()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/NavigationListener;

    .line 115
    invoke-interface {v1}, Lcom/amazon/krf/platform/NavigationListener;->onRubberbandingEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeNavigaitonListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/krf/internal/NavigationListenerDelegate;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
