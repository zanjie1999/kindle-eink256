.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;
.super Ljava/lang/Object;
.source "VerifyProvisioningOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    .line 58
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    invoke-static {v1, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1$2;

    invoke-direct {v2, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;)V

    .line 59
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    .line 69
    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->VERIFY_PROVISIONING_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderCompletableTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->compose(Lio/reactivex/CompletableTransformer;)Lio/reactivex/Completable;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    .line 70
    invoke-static {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;

    .line 71
    invoke-static {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)V

    .line 72
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$VerifyProvisioning;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 52
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/VerifyProvisioningOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$VerifyProvisioning;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
