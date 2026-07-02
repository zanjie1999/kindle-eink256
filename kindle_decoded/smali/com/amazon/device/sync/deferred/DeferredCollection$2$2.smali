.class Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;
.super Ljava/lang/Object;
.source "DeferredCollection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/DeferredCollection$2;->run()V
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
.field final synthetic this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

.field final synthetic val$input:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/deferred/DeferredCollection$2;Ljava/lang/Object;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;->this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    iput-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;->val$input:Ljava/lang/Object;

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

    .line 87
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;->this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    iget-object v0, v0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$fn:Lcom/amazon/device/sync/deferred/Function;

    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;->val$input:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/device/sync/deferred/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$2;->this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    iget-object v1, v1, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$outputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
