.class Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;
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
    name = "UnBuyRunnable"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;

.field private final unbuyCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    .line 881
    iput-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->refTag:Ljava/lang/String;

    .line 882
    iput-object p4, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->unbuyCompleteRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$200(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/PurchaseClientSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClientSelector;->select()Lcom/amazon/ea/purchase/PurchaseClient;

    move-result-object v0

    const-string v1, "PurchaseManagerUnBuyResult"

    .line 889
    invoke-static {v1, v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$300(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running unBuy [asin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", refTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->getPurchaseRecord(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/PurchaseRecord;

    move-result-object v1

    if-nez v1, :cond_1

    .line 896
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No purchase record found for the books that is being un-bought"

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_1
    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->refTag:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/amazon/ea/purchase/PurchaseClient;->unBuy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object v0

    .line 902
    iget-boolean v1, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->wasSuccessful:Z

    const-string v2, "UnBuySuccess"

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v1, :cond_2

    .line 903
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnBuy success"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->unbuyCompleteRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 906
    :cond_2
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnBuy failure"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    new-instance v8, Lcom/amazon/ea/purchase/model/CancelRecord;

    iget-boolean v3, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->wasSuccessful:Z

    const-wide/32 v4, 0x493e0

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/purchase/model/CancelRecord;-><init>(ZJJ)V

    .line 910
    invoke-static {v1, v8}, Lcom/amazon/ea/purchase/cache/RecentCancelCache;->setCancelRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/CancelRecord;)V

    .line 912
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 915
    :try_start_1
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in unBuy"

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :goto_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 921
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1300(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$UnBuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    return-void

    .line 917
    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 918
    throw v0
.end method
