.class Lcom/amazon/device/sync/deferred/Deferred$3;
.super Ljava/lang/Object;
.source "Deferred.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/Deferred;->then(Lcom/amazon/device/sync/deferred/Function;Lcom/amazon/device/sync/gear/RetryPolicy;)Lcom/amazon/device/sync/deferred/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/deferred/Deferred;

.field final synthetic val$fn:Lcom/amazon/device/sync/deferred/Function;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/deferred/Deferred;Lcom/amazon/device/sync/deferred/Function;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/Deferred$3;->this$0:Lcom/amazon/device/sync/deferred/Deferred;

    iput-object p2, p0, Lcom/amazon/device/sync/deferred/Deferred$3;->val$fn:Lcom/amazon/device/sync/deferred/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/Deferred$3;->val$fn:Lcom/amazon/device/sync/deferred/Function;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/Deferred$3;->this$0:Lcom/amazon/device/sync/deferred/Deferred;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/device/sync/deferred/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
