.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;
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
        "Ljava/lang/Throwable;",
        "Lio/reactivex/SingleSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

.field final synthetic val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;->val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
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

    .line 304
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Ljava/lang/Throwable;)V

    .line 308
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;->val$deviceDiscoveryEvent:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V

    invoke-static {p1}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

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

    .line 301
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$5;->apply(Ljava/lang/Throwable;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
