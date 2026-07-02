.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;
.super Ljava/lang/Object;
.source "GenericPromiseFactory.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final mAction:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;->mAction:Ljava/util/concurrent/Callable;

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TTResult;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;->mAction:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
