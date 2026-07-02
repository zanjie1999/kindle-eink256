.class public abstract Lcom/amazon/kedu/flashcards/loadable/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loadable:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private viewLoadedListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->viewLoadedListeners:Ljava/util/HashSet;

    .line 19
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addOnViewLoadedListener(Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->viewLoadedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract load()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "Loadable;"
        }
    .end annotation
.end method

.method protected notifyLoadingCompleted(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loadable;",
            ")V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->viewLoadedListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;

    .line 72
    invoke-interface {v1, p1}, Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;->onLoadingComplete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyLoadingStarted()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->viewLoadedListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;

    .line 64
    invoke-interface {v1}, Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;->onLoadingStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnViewLoadedListener(Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->viewLoadedListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 37
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/loadable/Loader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    new-instance v1, Lcom/amazon/kedu/flashcards/loadable/Loader$1;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/flashcards/loadable/Loader$1;-><init>(Lcom/amazon/kedu/flashcards/loadable/Loader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/loadable/Loader;->load()Ljava/lang/Object;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/amazon/kedu/flashcards/loadable/Loader$2;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kedu/flashcards/loadable/Loader$2;-><init>(Lcom/amazon/kedu/flashcards/loadable/Loader;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
