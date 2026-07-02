.class public interface abstract Lkotlinx/coroutines/channels/BroadcastChannel;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/SendChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/BroadcastChannel$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "TE;>;"
    }
.end annotation

.annotation build Lkotlinx/coroutines/ExperimentalCoroutinesApi;
.end annotation


# virtual methods
.method public abstract cancel(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end method
