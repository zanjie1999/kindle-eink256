.class Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;
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
    name = "BuyRunnable"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final buyCompleteRunnable:Ljava/lang/Runnable;

.field private final failReasonToMetricConstant:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final oneTapBuyLatencyPayload:Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

.field private final price:Lcom/amazon/ea/purchase/model/BookOffer;

.field private final refTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/ea/purchase/PurchaseManager;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    .line 775
    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->PRICE_INCREASED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_CREDIT_CARD:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->NEED_BILLING_ADDRESS:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    sget-object v6, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->MFA_CHALLENGE_REQUIRED:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const-string v1, "BuyFailPriceIncreased"

    const-string v3, "BuyFailNeedCreditCardInfo"

    const-string v5, "BuyFailNeedBillingAddress"

    const-string v7, "MFAChallengeNeeded"

    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->failReasonToMetricConstant:Lcom/google/common/collect/ImmutableMap;

    .line 776
    iput-object p2, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    .line 777
    iput-object p3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    .line 778
    iput-object p4, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->refTag:Ljava/lang/String;

    .line 779
    iput-object p5, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->buyCompleteRunnable:Ljava/lang/Runnable;

    .line 780
    new-instance p1, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;-><init>(Ljava/lang/String;JJ)V

    iput-object p1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->oneTapBuyLatencyPayload:Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 786
    :try_start_0
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$702(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$500(Lcom/amazon/ea/purchase/PurchaseManager;)Lcom/amazon/ea/purchase/cache/OfferCache;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/purchase/cache/OfferCache;->fetch(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    const-string v1, "PurchaseManagerBuyResult"

    .line 788
    invoke-virtual {v0}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->getPurchaseClient()Lcom/amazon/ea/purchase/PurchaseClient;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/purchase/PurchaseManager;->access$300(Ljava/lang/String;Lcom/amazon/ea/purchase/PurchaseClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running buy [asin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", price="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->price:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", refTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->refTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->buy(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object v0

    .line 795
    iget-boolean v1, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->wasSuccessful:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 796
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$800()Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->oneTapBuyLatencyPayload:Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    iget-object v4, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->oneTapBuyLatencyPayload:Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    .line 798
    invoke-virtual {v4}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getBookASIN()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->oneTapBuyLatencyPayload:Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    .line 799
    invoke-virtual {v5}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->getStartTime()J

    move-result-wide v5

    .line 800
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 797
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;->copy(Ljava/lang/String;JJ)Lcom/amazon/ea/metrics/OneTapBuyLatencyPayload;

    move-result-object v3

    .line 796
    invoke-virtual {v1, v3}, Lcom/amazon/ea/metrics/OneTapActionLatencyMetricsReporter;->reportActionLatency(Lcom/amazon/ea/metrics/OneTapBookActionsMetricPayload;)V

    .line 803
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v1

    const-string v3, "AnyActionsBuyBook"

    iget-object v4, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->readingStreamsMetadata:Ljava/util/Map;

    invoke-interface {v1, v3, v4}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 805
    iget-object v1, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->purchaseRecord:Lcom/google/common/base/Optional;

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->purchaseRecord:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/purchase/model/PurchaseRecord;

    invoke-static {v1, v0}, Lcom/amazon/ea/purchase/cache/RecentPurchaseCache;->setPurchaseRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$900(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Buy success. Waiting for ownership to change..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1000(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v3, "BuySuccess"

    .line 816
    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-nez v1, :cond_3

    .line 821
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Buy failed due to ownership not changing"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BuyFailOwnershipNeverChanged"

    .line 822
    invoke-static {v0, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 823
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    new-instance v1, Lcom/amazon/ea/purchase/model/FailRecord;

    sget-object v2, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    sget-object v3, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->OWNERSHIP_DID_NOT_CHANGE:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->setFailRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/FailRecord;)V

    goto :goto_1

    .line 826
    :cond_3
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->buyCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->getInstance()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$700(Lcom/amazon/ea/purchase/PurchaseManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 827
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invoking Book Open..."

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->buyCompleteRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 831
    :cond_4
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    invoke-static {v1, v0}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1100(Lcom/amazon/ea/purchase/PurchaseManager;Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_1

    .line 835
    :cond_5
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    new-instance v3, Lcom/amazon/ea/purchase/model/FailRecord;

    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    iget-object v5, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    iget-object v6, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->message:Lcom/google/common/base/Optional;

    invoke-direct {v3, v4, v5, v6}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;)V

    invoke-static {v1, v3}, Lcom/amazon/ea/purchase/cache/RecentFailCache;->setFailRecord(Ljava/lang/String;Lcom/amazon/ea/purchase/model/FailRecord;)V

    .line 836
    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->failReasonToMetricConstant:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, "BuyFailUnknownReason"

    .line 840
    :cond_6
    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 841
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buy failed due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/amazon/ea/purchase/PurchaseClient$Result;->failureReason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 844
    :try_start_1
    invoke-static {}, Lcom/amazon/ea/purchase/PurchaseManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in buy"

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    :goto_1
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 850
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->this$0:Lcom/amazon/ea/purchase/PurchaseManager;

    iget-object v1, p0, Lcom/amazon/ea/purchase/PurchaseManager$BuyRunnable;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/PurchaseManager;->access$1200(Lcom/amazon/ea/purchase/PurchaseManager;Ljava/lang/String;)V

    return-void

    .line 846
    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 847
    throw v0
.end method
