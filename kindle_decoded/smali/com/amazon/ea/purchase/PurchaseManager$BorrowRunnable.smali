.class Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;
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
    name = "BorrowRunnable"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final borrowCompleteRunnable:Ljava/lang/Runnable;

.field private final oneTapBorrowLatencyPayload:Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

.field private final refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .line 950
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    .line 952
    iput-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->refTag:Ljava/lang/String;

    .line 953
    iput-object p4, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->borrowCompleteRunnable:Ljava/lang/Runnable;

    .line 954
    new-instance p1, Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;-><init>(Ljava/lang/String;JJ)V

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->oneTapBorrowLatencyPayload:Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 960
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$702(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Ljava/lang/String;

    .line 961
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$500(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/cache/OfferCache;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/purchase/cache/OfferCache;->fetch(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    const-string v1, "PurchaseManagerBorrowResult"

    .line 962
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->getPurchaseClient()Lcom/amazon/ea/purchase/PurchaseClient;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->access$300(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 963
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 964
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running borrow [asin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", refTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->borrow(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object v0

    .line 969
    iget-boolean v1, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->wasSuccessful:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 970
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$800()Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->oneTapBorrowLatencyPayload:Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->oneTapBorrowLatencyPayload:Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    .line 972
    invoke-virtual {v1}, Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->oneTapBorrowLatencyPayload:Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    .line 973
    invoke-virtual {v1}, Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;->getStartTime()J

    move-result-wide v5

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 971
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;->copy(Ljava/lang/String;JJ)Lcom/amazon/ea/metrics/OneTapBorrowLatencyPayload;

    move-result-object v1

    .line 970
    invoke-virtual {v0, v1}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;->reportActionLatency(Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;)V

    .line 976
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    .line 979
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Borrow success. Waiting for ownership to change..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1000(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v3, "BorrowSuccess"

    .line 982
    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-nez v1, :cond_2

    .line 985
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Borrow failed due to ownership not changing"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BorrowFailOwnershipNeverChanged"

    .line 986
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 987
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    new-instance v1, Lcom/amazon/ea/purchase/model/FailRecord;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v3, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->OWNERSHIP_DID_NOT_CHANGE:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->setFailRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 990
    :cond_2
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->borrowCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$700(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 991
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invoking Book Open..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->borrowCompleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 995
    :cond_3
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v1, v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1100(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_1

    .line 999
    :cond_4
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    new-instance v3, Lcom/amazon/ea/purchase/model/FailRecord;

    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    iget-object v5, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    iget-object v6, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->message:Lcom/google/common/base/Optional;

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;)V

    invoke-static {v1, v3}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->setFailRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/FailRecord;)V

    .line 1000
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Borrow failed due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->AUTHENTICATION_FAILED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    iget-object v0, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "BorrowFailMissingCSRFToken"

    .line 1002
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const-string v0, "BorrowFailUnknownReason"

    .line 1004
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    :goto_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 1012
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BorrowRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1200(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1008
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 1009
    throw v0
.end method
