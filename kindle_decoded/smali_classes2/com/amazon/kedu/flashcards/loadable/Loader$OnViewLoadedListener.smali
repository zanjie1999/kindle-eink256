.class public interface abstract Lcom/amazon/kedu/flashcards/loadable/Loader$OnViewLoadedListener;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/loadable/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnViewLoadedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Loadable:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadingComplete(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Loadable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoadingStarted()V
.end method
