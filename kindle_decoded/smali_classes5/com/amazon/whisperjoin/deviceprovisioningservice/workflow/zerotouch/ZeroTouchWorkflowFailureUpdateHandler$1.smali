.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowFailureUpdateHandler.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;->FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A workflow failure occurred in debug mode, ignoring additional handling"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSClientError;->isUnblessedDiscovery()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/util/FireOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/util/FireOSUtil;->isPoweredDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "High-rate of unblessed discoveries on a powered device. Not triggering backoff."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    instance-of v0, v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/error/DSSServiceError;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->thresholdExceeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Triggering high rate of DSS request failures"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfDssRequestFailures;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfDssRequestFailures;-><init>()V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;)Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/DetectEventRateExceedingThreshold;->thresholdExceeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Triggering high rate of workflow failures"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfWorkflowFailures;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/HighRateOfWorkflowFailures;-><init>()V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 94
    :cond_4
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
