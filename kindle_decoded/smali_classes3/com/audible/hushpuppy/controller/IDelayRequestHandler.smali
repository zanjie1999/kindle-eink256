.class public interface abstract Lcom/audible/hushpuppy/controller/IDelayRequestHandler;
.super Ljava/lang/Object;
.source "IDelayRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dequeueRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract enqueueRequest(Ljava/lang/Object;Lcom/audible/hushpuppy/controller/IExecutableCommand;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/audible/hushpuppy/controller/IExecutableCommand;",
            "J)Z"
        }
    .end annotation
.end method

.method public abstract isRequestQueued(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method
