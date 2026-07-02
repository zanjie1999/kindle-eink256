.class Lcom/amazon/device/sync/deferred/DeferredPair$1;
.super Ljava/lang/Object;
.source "DeferredPair.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/DeferredPair;->thenFirst()Lcom/amazon/device/sync/deferred/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/deferred/DeferredPair;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/deferred/DeferredPair;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredPair$1;->this$0:Lcom/amazon/device/sync/deferred/DeferredPair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredPair$1;->this$0:Lcom/amazon/device/sync/deferred/DeferredPair;

    invoke-static {v0}, Lcom/amazon/device/sync/deferred/DeferredPair;->access$000(Lcom/amazon/device/sync/deferred/DeferredPair;)Lcom/amazon/device/sync/deferred/Deferred;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
