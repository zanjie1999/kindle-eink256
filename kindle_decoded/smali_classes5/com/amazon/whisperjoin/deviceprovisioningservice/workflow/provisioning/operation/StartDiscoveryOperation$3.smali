.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;
.super Ljava/lang/Object;
.source "StartDiscoveryOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->discoverBarcodeDevice()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;)Lio/reactivex/ObservableSource;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->getStatus()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;->RECENTLY_REGISTERED:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->publish()Lio/reactivex/observables/ConnectableObservable;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;->getDurationToWait()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    .line 197
    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceRecentlyProvisionedException;

    invoke-direct {v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceRecentlyProvisionedException;-><init>()V

    .line 198
    invoke-static {v6}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v6

    invoke-virtual {p1, v1, v2, v5, v6}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    .line 201
    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->skip(J)Lio/reactivex/Observable;

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Lio/reactivex/observables/ConnectableObservable;->connect()Lio/reactivex/disposables/Disposable;

    .line 208
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

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

    .line 183
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/StartDiscoveryOperation$3;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetRegistrationStatusResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
