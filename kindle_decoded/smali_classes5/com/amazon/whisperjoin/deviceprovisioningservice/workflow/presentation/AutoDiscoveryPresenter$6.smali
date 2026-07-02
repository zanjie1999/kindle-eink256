.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;
.super Ljava/lang/Object;
.source "AutoDiscoveryPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->discoverLocalNotificationDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)Lio/reactivex/SingleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)V
    .locals 0

    .line 293
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;->val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;",
            ")",
            "Lio/reactivex/SingleSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;->val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

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

    .line 293
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$6;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
