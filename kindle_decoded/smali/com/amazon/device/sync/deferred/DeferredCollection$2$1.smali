.class Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;
.super Ljava/lang/Object;
.source "DeferredCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/deferred/DeferredCollection$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

.field final synthetic val$pending:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/deferred/DeferredCollection$2;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;->this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    iput-object p2, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;->val$pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;->val$pending:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/device/sync/deferred/DeferredCollection$2$1;->this$1:Lcom/amazon/device/sync/deferred/DeferredCollection$2;

    iget-object v1, v0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$gather:Lcom/amazon/device/sync/deferred/DeferredCollection;

    iget-object v0, v0, Lcom/amazon/device/sync/deferred/DeferredCollection$2;->val$outputs:Ljava/util/List;

    invoke-static {v1, v0}, Lcom/amazon/device/sync/deferred/DeferredCollection;->access$000(Lcom/amazon/device/sync/deferred/DeferredCollection;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
