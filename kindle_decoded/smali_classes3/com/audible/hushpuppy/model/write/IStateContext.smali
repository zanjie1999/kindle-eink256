.class public interface abstract Lcom/audible/hushpuppy/model/write/IStateContext;
.super Ljava/lang/Object;
.source "IStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/IObservable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/IObservable<",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "TT;>;>;",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract getState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract setState(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
