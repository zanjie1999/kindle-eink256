.class Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;
.super Ljava/lang/Object;
.source "PurchaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/PurchaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareBuyRunnable"
.end annotation


# instance fields
.field private final asins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 698
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->asins:Ljava/util/List;

    .line 700
    iput-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->refTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "GetOffersSuccess"

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$200(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/PurchaseClientSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ea/purchase/PurchaseClientSelector;->select()Lcom/amazon/ea/purchase/PurchaseClient;

    move-result-object v1

    const-string v2, "PurchaseManagerGetOffersResult"

    .line 707
    invoke-static {v2, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$300(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running prepareBuy [asins="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->asins:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", refTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->asins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->asins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 715
    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v5}, Lcom/amazon/ea/purchase/PurchaseManager;->access$500(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/cache/OfferCache;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/ea/purchase/cache/OfferCache;->needsRefresh(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 716
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 718
    :cond_2
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 719
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping asin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (price already cached)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 735
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    .line 727
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager$PrepareBuyRunnable;->refTag:Ljava/lang/String;

    invoke-static {v3, v1, v2, v4}, Lcom/amazon/ea/purchase/PurchaseManager;->access$600(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/ea/purchase/PurchaseClient;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 728
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 732
    :try_start_2
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in prepareBuy"

    invoke-static {v2, v3, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    .line 733
    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    :goto_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-void

    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 736
    throw v0
.end method
