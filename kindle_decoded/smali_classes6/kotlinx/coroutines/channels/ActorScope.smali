.class public interface abstract Lkotlinx/coroutines/channels/ActorScope;
.super Ljava/lang/Object;
.source "Actor.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Lkotlinx/coroutines/channels/ReceiveChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ActorScope$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/channels/ReceiveChannel<",
        "TE;>;"
    }
.end annotation

.annotation build Lkotlinx/coroutines/ObsoleteCoroutinesApi;
.end annotation
