.class Lcom/amazon/device/sync/deferred/DeferredCollection$1;
.super Ljava/lang/Object;
.source "DeferredCollection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/DeferredCollection;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Collection<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$result:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$1;->val$result:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/amazon/device/sync/deferred/DeferredCollection$1;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$1;->val$result:Ljava/util/Collection;

    return-object v0
.end method
