.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;
.super Ljava/lang/Object;
.source "AutoDiscoveryPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->startDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)V
    .locals 2

    .line 240
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredLocalNotificationProvisioneeResponse;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;->ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event$State;

    if-ne v0, v1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/Event;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$2;->accept(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryAndResult;)V

    return-void
.end method
